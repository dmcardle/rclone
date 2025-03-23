package gitannex

import (
	"context"
	"errors"
	"fmt"
	"path/filepath"

	"github.com/rclone/rclone/cmd/gitannex/messages"
	"github.com/rclone/rclone/fs"
	"github.com/rclone/rclone/fs/cache"
	"github.com/rclone/rclone/fs/operations"
)

// server contains this command's current state.
type server struct {
	transceiver messages.Transceiver

	extensionInfo                bool
	extensionAsync               bool
	extensionGetGitRemoteName    bool
	extensionUnavailableResponse bool

	configsDone            bool
	configPrefix           string
	configRcloneRemoteName string
	configRcloneLayout     string
}

func (s *server) sendMsg(msg string) {
	s.transceiver.SendMsg(msg)
}

func (s *server) getMsg() (*messages.MessageParser, error) {
	return s.transceiver.GetMsg()
}

func (s *server) run() error {
	// The remote sends the first message.
	s.sendMsg("VERSION 1")

	for {
		message, err := s.getMsg()
		if err != nil {
			return fmt.Errorf("error receiving message: %w", err)
		}

		if message == nil {
			break
		}

		command, err := message.NextSpaceDelimitedParameter()
		if err != nil {
			return fmt.Errorf("failed to parse command")
		}

		switch command {
		//
		// Git-annex requires that these requests are supported.
		//
		case "INITREMOTE":
			err = s.handleInitRemote()
		case "PREPARE":
			err = s.handlePrepare()
		case "EXPORTSUPPORTED":
			// Indicate that we do not support exports.
			s.sendMsg("EXPORTSUPPORTED-FAILURE")
		case "TRANSFER":
			err = s.handleTransfer(message)
		case "CHECKPRESENT":
			err = s.handleCheckPresent(message)
		case "REMOVE":
			err = s.handleRemove(message)
		case "ERROR":
			errorMessage := message.FinalParameter()
			err = fmt.Errorf("received error message from git-annex: %s", errorMessage)

		//
		// These requests are optional.
		//
		case "EXTENSIONS":
			// Git-annex just told us which protocol extensions it supports.
			// Respond with the list of extensions that we want to use (none).
			err = s.handleExtensions(message)
		case "LISTCONFIGS":
			s.handleListConfigs()
		case "GETCOST":
			// Git-annex wants to know the "cost" of using this remote. It
			// probably depends on the backend we will be using, but let's just
			// consider this an "expensive remote" per git-annex's
			// Config/Cost.hs.
			s.sendMsg("COST 200")
		case "GETAVAILABILITY":
			// Indicate that this is a cloud service.
			s.sendMsg("AVAILABILITY GLOBAL")
		case "CLAIMURL", "CHECKURL", "WHEREIS", "GETINFO":
			s.sendMsg("UNSUPPORTED-REQUEST")
		default:
			err = fmt.Errorf("received unexpected message from git-annex: %s", message.OriginalMessage())
		}
		if err != nil {
			return err
		}
	}

	return nil
}

// Idempotently handle an incoming INITREMOTE message. This should perform
// one-time setup operations for the remote, such as validating or rejecting
// config values. We may receive the INITREMOTE message again in later sessions,
// e.g. when the same git-annex remote is initialized in a different repository.
// However, we are *not* guaranteed to receive the INITREMOTE message once per
// session, so do not mutate state here and expect it to always be available in
// other handler functions.
func (s *server) handleInitRemote() error {
	if err := s.queryConfigs(); err != nil {
		return fmt.Errorf("failed to get configs: %w", err)
	}

	if err := validateRemoteName(s.configRcloneRemoteName); err != nil {
		s.sendMsg(fmt.Sprintf("INITREMOTE-FAILURE %s", err))
		return fmt.Errorf("failed to init remote: %w", err)
	}

	if mode := parseLayoutMode(s.configRcloneLayout); mode == layoutModeUnknown {
		err := fmt.Errorf("unknown layout mode: %s", s.configRcloneLayout)
		s.sendMsg(fmt.Sprintf("INITREMOTE-FAILURE %s", err))
		return fmt.Errorf("failed to init remote: %w", err)
	}

	s.sendMsg("INITREMOTE-SUCCESS")
	return nil
}

func (s *server) mustSetConfigValue(id configID, value string) {
	switch id {
	case configRemoteName:
		s.configRcloneRemoteName = value
	case configPrefix:
		s.configPrefix = value
	case configLayout:
		s.configRcloneLayout = value
	default:
		panic(fmt.Errorf("unhandled configId: %v", id))
	}
}

// Query git-annex for config values.
func (s *server) queryConfigs() error {
	if s.configsDone {
		return nil
	}

	// Send a "GETCONFIG" message for each required config and parse git-annex's
	// "VALUE" response.
queryNextConfig:
	for _, config := range requiredConfigs {
		// Try each of the config's names in sequence, starting with the
		// canonical name.
		for _, configName := range config.names {
			s.sendMsg(fmt.Sprintf("GETCONFIG %s", configName))

			message, err := s.getMsg()
			if err != nil {
				return err
			}

			valueKeyword, err := message.NextSpaceDelimitedParameter()
			if err != nil || valueKeyword != "VALUE" {
				return fmt.Errorf("failed to parse config value: %s", message.OriginalMessage())
			}

			if value := message.FinalParameter(); value != "" {
				s.mustSetConfigValue(config.id, value)
				continue queryNextConfig
			}
		}
		if config.defaultValue == "" {
			return fmt.Errorf("did not receive a non-empty config value for %q", config.getCanonicalName())
		}
		s.mustSetConfigValue(config.id, config.defaultValue)
	}

	s.configsDone = true
	return nil
}

func (s *server) handlePrepare() error {
	if err := s.queryConfigs(); err != nil {
		s.sendMsg("PREPARE-FAILURE Error getting configs")
		return fmt.Errorf("error getting configs: %w", err)
	}
	s.sendMsg("PREPARE-SUCCESS")
	return nil
}

// Git-annex is asking us to return the list of settings that we use. Keep this
// in sync with `handlePrepare()`.
func (s *server) handleListConfigs() {
	for _, config := range requiredConfigs {
		s.sendMsg(fmt.Sprintf("CONFIG %s %s", config.getCanonicalName(), config.fullDescription()))
	}
	s.sendMsg("CONFIGEND")
}

func (s *server) handleTransfer(message *messages.MessageParser) error {
	argMode, err := message.NextSpaceDelimitedParameter()
	if err != nil {
		s.sendMsg("TRANSFER-FAILURE failed to parse direction")
		return fmt.Errorf("malformed arguments for TRANSFER: %w", err)
	}
	argKey, err := message.NextSpaceDelimitedParameter()
	if err != nil {
		s.sendMsg("TRANSFER-FAILURE failed to parse key")
		return fmt.Errorf("malformed arguments for TRANSFER: %w", err)
	}
	argFile := message.FinalParameter()
	if argFile == "" {
		s.sendMsg("TRANSFER-FAILURE failed to parse file path")
		return errors.New("failed to parse file path")
	}

	if err := s.queryConfigs(); err != nil {
		s.sendMsg(fmt.Sprintf("TRANSFER-FAILURE %s %s failed to get configs", argMode, argKey))
		return fmt.Errorf("error getting configs: %w", err)
	}

	layout := parseLayoutMode(s.configRcloneLayout)
	if layout == layoutModeUnknown {
		s.sendMsg(fmt.Sprintf("TRANSFER-FAILURE %s", argKey))
		return fmt.Errorf("error parsing layout mode: %q", s.configRcloneLayout)
	}

	remoteFsString, err := buildFsString(s.queryDirhash, layout, argKey, s.configRcloneRemoteName, s.configPrefix)
	if err != nil {
		s.sendMsg(fmt.Sprintf("TRANSFER-FAILURE %s", argKey))
		return fmt.Errorf("error building fs string: %w", err)
	}

	remoteFs, err := cache.Get(context.TODO(), remoteFsString)
	if err != nil {
		s.sendMsg(fmt.Sprintf("TRANSFER-FAILURE %s %s failed to get remote fs", argMode, argKey))
		return err
	}

	localDir := filepath.Dir(argFile)
	localFs, err := cache.Get(context.TODO(), localDir)
	if err != nil {
		s.sendMsg(fmt.Sprintf("TRANSFER-FAILURE %s %s failed to get local fs", argMode, argKey))
		return fmt.Errorf("failed to get local fs: %w", err)
	}

	remoteFileName := argKey
	localFileName := filepath.Base(argFile)

	switch argMode {
	case "STORE":
		err = operations.CopyFile(context.TODO(), remoteFs, localFs, remoteFileName, localFileName)
		if err != nil {
			s.sendMsg(fmt.Sprintf("TRANSFER-FAILURE %s %s failed to copy file: %s", argMode, argKey, err))
			return err
		}

	case "RETRIEVE":
		err = operations.CopyFile(context.TODO(), localFs, remoteFs, localFileName, remoteFileName)
		// It is non-fatal when retrieval fails because the file is missing on
		// the remote.
		if err == fs.ErrorObjectNotFound {
			s.sendMsg(fmt.Sprintf("TRANSFER-FAILURE %s %s not found", argMode, argKey))
			return nil
		}
		if err != nil {
			s.sendMsg(fmt.Sprintf("TRANSFER-FAILURE %s %s failed to copy file: %s", argMode, argKey, err))
			return err
		}

	default:
		s.sendMsg(fmt.Sprintf("TRANSFER-FAILURE %s %s unrecognized mode", argMode, argKey))
		return fmt.Errorf("received malformed TRANSFER mode: %v", argMode)
	}

	s.sendMsg(fmt.Sprintf("TRANSFER-SUCCESS %s %s", argMode, argKey))
	return nil
}

func (s *server) handleCheckPresent(message *messages.MessageParser) error {
	argKey := message.FinalParameter()
	if argKey == "" {
		return errors.New("failed to parse response for CHECKPRESENT")
	}

	if err := s.queryConfigs(); err != nil {
		s.sendMsg(fmt.Sprintf("CHECKPRESENT-FAILURE %s failed to get configs", argKey))
		return fmt.Errorf("error getting configs: %s", err)
	}

	layout := parseLayoutMode(s.configRcloneLayout)
	if layout == layoutModeUnknown {
		s.sendMsg(fmt.Sprintf("CHECKPRESENT-FAILURE %s", argKey))
		return fmt.Errorf("error parsing layout mode: %q", s.configRcloneLayout)
	}

	remoteFsString, err := buildFsString(s.queryDirhash, layout, argKey, s.configRcloneRemoteName, s.configPrefix)
	if err != nil {
		s.sendMsg(fmt.Sprintf("CHECKPRESENT-FAILURE %s", argKey))
		return fmt.Errorf("error building fs string: %w", err)
	}

	remoteFs, err := cache.Get(context.TODO(), remoteFsString)
	if err != nil {
		s.sendMsg(fmt.Sprintf("CHECKPRESENT-UNKNOWN %s failed to get remote fs", argKey))
		return err
	}

	_, err = remoteFs.NewObject(context.TODO(), argKey)
	if err == fs.ErrorObjectNotFound {
		s.sendMsg(fmt.Sprintf("CHECKPRESENT-FAILURE %s", argKey))
		return nil
	}
	if err != nil {
		s.sendMsg(fmt.Sprintf("CHECKPRESENT-UNKNOWN %s error finding file", argKey))
		return err
	}

	s.sendMsg(fmt.Sprintf("CHECKPRESENT-SUCCESS %s", argKey))
	return nil
}

func (s *server) queryDirhash(msg string) (string, error) {
	s.sendMsg(msg)
	parser, err := s.getMsg()
	if err != nil {
		return "", err
	}
	keyword, err := parser.NextSpaceDelimitedParameter()
	if err != nil {
		return "", err
	}
	if keyword != "VALUE" {
		return "", fmt.Errorf("expected VALUE keyword, but got %q", keyword)
	}
	dirhash, err := parser.NextSpaceDelimitedParameter()
	if err != nil {
		return "", fmt.Errorf("failed to parse dirhash: %w", err)
	}
	return dirhash, nil
}

func (s *server) handleRemove(message *messages.MessageParser) error {
	argKey := message.FinalParameter()
	if argKey == "" {
		return errors.New("failed to parse key for REMOVE")
	}

	layout := parseLayoutMode(s.configRcloneLayout)
	if layout == layoutModeUnknown {
		s.sendMsg(fmt.Sprintf("REMOVE-FAILURE %s", argKey))
		return fmt.Errorf("error parsing layout mode: %q", s.configRcloneLayout)
	}

	remoteFsString, err := buildFsString(s.queryDirhash, layout, argKey, s.configRcloneRemoteName, s.configPrefix)
	if err != nil {
		s.sendMsg(fmt.Sprintf("REMOVE-FAILURE %s", argKey))
		return fmt.Errorf("error building fs string: %w", err)
	}

	remoteFs, err := cache.Get(context.TODO(), remoteFsString)
	if err != nil {
		s.sendMsg(fmt.Sprintf("REMOVE-FAILURE %s", argKey))
		return fmt.Errorf("error getting remote fs: %w", err)
	}

	fileObj, err := remoteFs.NewObject(context.TODO(), argKey)
	// It is non-fatal when removal fails because the file is missing on the
	// remote.
	if errors.Is(err, fs.ErrorObjectNotFound) {
		s.sendMsg(fmt.Sprintf("REMOVE-SUCCESS %s", argKey))
		return nil
	}
	if err != nil {
		s.sendMsg(fmt.Sprintf("REMOVE-FAILURE %s error getting new fs object: %s", argKey, err))
		return fmt.Errorf("error getting new fs object: %w", err)
	}
	if err := operations.DeleteFile(context.TODO(), fileObj); err != nil {
		s.sendMsg(fmt.Sprintf("REMOVE-FAILURE %s error deleting file", argKey))
		return fmt.Errorf("error deleting file: %q", argKey)
	}
	s.sendMsg(fmt.Sprintf("REMOVE-SUCCESS %s", argKey))
	return nil
}

func (s *server) handleExtensions(message *messages.MessageParser) error {
	for {
		extension, err := message.NextSpaceDelimitedParameter()
		if err != nil {
			break
		}
		switch extension {
		case "INFO":
			s.extensionInfo = true
		case "ASYNC":
			s.extensionAsync = true
		case "GETGITREMOTENAME":
			s.extensionGetGitRemoteName = true
		case "UNAVAILABLERESPONSE":
			s.extensionUnavailableResponse = true
		}
	}
	s.sendMsg("EXTENSIONS")
	return nil
}
