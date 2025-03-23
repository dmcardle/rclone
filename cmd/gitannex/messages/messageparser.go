package messages

import (
	"errors"
	"fmt"
	"strings"
)

// MessageParser helps parse messages we receive from git-annex into a sequence
// of parameters. Messages are not quite trivial to parse because they are
// separated by spaces, but the final parameter may itself contain spaces.
//
// This abstraction is necessary because simply splitting on space doesn't cut
// it. Also, we cannot know how many parameters to parse until we've parsed the
// first parameter.
type MessageParser struct {
	original string
	scratch  string
}

func newMessageParser(line string) MessageParser {
	return MessageParser{original: line, scratch: line}
}

// OriginalMessage returns the original message, unmodified.
func (m *MessageParser) OriginalMessage() string {
	return m.original
}

// NextSpaceDelimitedParameter consumes the next space-delimited parameter.
func (m *MessageParser) NextSpaceDelimitedParameter() (string, error) {
	m.scratch = strings.TrimRight(m.scratch, "\r\n")
	if len(m.scratch) == 0 {
		return "", errors.New("nothing remains to parse")
	}

	before, after, found := strings.Cut(m.scratch, " ")
	if found {
		if len(before) == 0 {
			return "", fmt.Errorf("found an empty space-delimited parameter in line: %q", m.scratch)
		}
		m.scratch = after
		return before, nil
	}

	remaining := m.scratch
	m.scratch = ""
	return remaining, nil
}

// FinalParameter consumes the final parameter, which may contain spaces.
func (m *MessageParser) FinalParameter() string {
	m.scratch = strings.TrimRight(m.scratch, "\r\n")
	if len(m.scratch) == 0 {
		return ""
	}

	param := m.scratch
	m.scratch = ""
	return param
}
