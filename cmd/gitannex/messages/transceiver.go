package messages

import (
	"bufio"
	"fmt"
	"io"
	"os"
)

// Transceiver is responsible for transmitting and receiving messages over
// stdout and stdin, respectively.
type Transceiver struct {
	reader                  *bufio.Reader
	writer                  io.Writer
	verboseTranscriptStderr bool
}

// NewTransceiver creates a transceiver that sends messages via the writer and
// receives them via the reader. When verboseTranscriptStderr is true, the
// transceiver writes a copy of every message to stderr.
func NewTransceiver(reader *bufio.Reader, writer io.Writer, verboseTranscriptStderr bool) Transceiver {
	return Transceiver{reader, writer, verboseTranscriptStderr}
}

// SendMsg writes msg to stdout, followed by a newline. If verbose mode is
// enabled, it writes the message to stderr. There's no way to recover if stdout
// or stderr are closed, so it panics on error.
func (t *Transceiver) SendMsg(msg string) {
	msg += "\n"
	if _, err := io.WriteString(t.writer, msg); err != nil {
		panic(err)
	}
	if t.verboseTranscriptStderr {
		_, err := os.Stderr.WriteString(fmt.Sprintf("server sent %q\n", msg))
		if err != nil {
			panic(fmt.Errorf("failed to write verbose message to stderr: %w", err))
		}
	}
}

// GetMsg reads a line from stdin. If verbose mode is enabled, it writes the
// message to stderr. If it successfully reads a message, it returns a
// [MessageParser] and no error. Git-annex closes stdin when it is done with us,
// so failing to read a new line is not an error; in this case, we return no
// error and no parser. Otherwise, if the message is malformed, it returns an
// error.
func (t *Transceiver) GetMsg() (*MessageParser, error) {
	msg, err := t.reader.ReadString('\n')
	if err != nil {
		if len(msg) == 0 {
			return nil, nil
		}
		return nil, fmt.Errorf("expected message to end with newline: %q", msg)
	}
	if t.verboseTranscriptStderr {
		_, err := os.Stderr.WriteString(fmt.Sprintf("server received %q\n", msg))
		if err != nil {
			return nil, fmt.Errorf("failed to write verbose message to stderr: %w", err)
		}
	}
	parser := newMessageParser(msg)
	return &parser, nil
}
