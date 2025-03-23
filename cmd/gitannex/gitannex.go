// Package gitannex provides the "gitannex" command, which enables [git-annex]
// to communicate with rclone by implementing the [external special remote
// protocol]. The protocol is line delimited and spoken over stdin and stdout.
//
// # Milestones
//
// (Tracked in [issue #7625].)
//
//  1. ✅ Minimal support for the [external special remote protocol]. Tested on
//     "local", "drive", and "dropbox" backends.
//  2. Add support for the ASYNC protocol extension. This may improve performance.
//  3. Support the [simple export interface]. This will enable `git-annex
//     export` functionality.
//  4. Once the draft is finalized, support import/export interface.
//
// [git-annex]: https://git-annex.branchable.com/
// [external special remote protocol]: https://git-annex.branchable.com/design/external_special_remote_protocol/
// [simple export interface]: https://git-annex.branchable.com/design/external_special_remote_protocol/export_and_import_appendix/
// [issue #7625]: https://github.com/rclone/rclone/issues/7625
package gitannex

import (
	"bufio"
	_ "embed"
	"fmt"
	"os"
	"path/filepath"

	"github.com/rclone/rclone/cmd"
	"github.com/rclone/rclone/cmd/gitannex/messages"
	"github.com/spf13/cobra"
)

const subcommandName string = "gitannex"
const uniqueCommandName string = "git-annex-remote-rclone-builtin"
const verboseTranscriptStderr = false

//go:embed gitannex.md
var gitannexHelp string

func init() {
	os.Args = maybeTransformArgs(os.Args)
	cmd.Root.AddCommand(command)
}

// maybeTransformArgs returns a modified version of `args` with the "gitannex"
// subcommand inserted when `args` indicates that the program was executed as
// "git-annex-remote-rclone-builtin". One way this can happen is when rclone is
// invoked via symlink. Otherwise, returns `args`.
func maybeTransformArgs(args []string) []string {
	if len(args) == 0 || filepath.Base(args[0]) != uniqueCommandName {
		return args
	}
	newArgs := make([]string, 0, len(args)+1)
	newArgs = append(newArgs, args[0])
	newArgs = append(newArgs, subcommandName)
	newArgs = append(newArgs, args[1:]...)
	return newArgs
}

var command = &cobra.Command{
	Aliases: []string{uniqueCommandName},
	Use:     subcommandName,
	Short:   "Speaks with git-annex over stdin/stdout.",
	Long:    gitannexHelp,
	Annotations: map[string]string{
		"versionIntroduced": "v1.67.0",
	},
	Run: func(command *cobra.Command, args []string) {
		cmd.CheckArgs(0, 0, command, args)

		s := server{
			transceiver: messages.NewTransceiver(bufio.NewReader(os.Stdin), os.Stdout, verboseTranscriptStderr),
		}
		err := s.run()
		if err != nil {
			s.sendMsg(fmt.Sprintf("ERROR %s", err.Error()))
			panic(err)
		}
	},
}
