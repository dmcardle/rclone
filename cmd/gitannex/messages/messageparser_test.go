package messages

import (
	"fmt"
	"testing"

	"github.com/stretchr/testify/assert"
)

type messageParserTestCase struct {
	label    string
	testFunc func(*testing.T)
}

var messageParserTestCases = []messageParserTestCase{
	{
		"OneParam",
		func(t *testing.T) {
			m := newMessageParser("foo\n")

			param, err := m.NextSpaceDelimitedParameter()
			assert.NoError(t, err)
			assert.Equal(t, param, "foo")

			param, err = m.NextSpaceDelimitedParameter()
			assert.Error(t, err)
			assert.Equal(t, param, "")

			param = m.FinalParameter()
			assert.Equal(t, param, "")

			param = m.FinalParameter()
			assert.Equal(t, param, "")

			param, err = m.NextSpaceDelimitedParameter()
			assert.Error(t, err)
			assert.Equal(t, param, "")
		},
	},
	{
		"TwoParams",
		func(t *testing.T) {
			m := newMessageParser("foo bar\n")

			param, err := m.NextSpaceDelimitedParameter()
			assert.NoError(t, err)
			assert.Equal(t, param, "foo")

			param, err = m.NextSpaceDelimitedParameter()
			assert.NoError(t, err)
			assert.Equal(t, param, "bar")

			param, err = m.NextSpaceDelimitedParameter()
			assert.Error(t, err)
			assert.Equal(t, param, "")

			param = m.FinalParameter()
			assert.Equal(t, param, "")
		},
	},
	{
		"TwoParamsNoTrailingNewline",
		func(t *testing.T) {
			m := newMessageParser("foo bar")

			param, err := m.NextSpaceDelimitedParameter()
			assert.NoError(t, err)
			assert.Equal(t, param, "foo")

			param, err = m.NextSpaceDelimitedParameter()
			assert.NoError(t, err)
			assert.Equal(t, param, "bar")

			param, err = m.NextSpaceDelimitedParameter()
			assert.Error(t, err)
			assert.Equal(t, param, "")

			param = m.FinalParameter()
			assert.Equal(t, param, "")
		},
	},
	{
		"ThreeParamsWhereFinalParamContainsSpaces",
		func(t *testing.T) {
			m := newMessageParser("firstparam secondparam final param with spaces")

			param, err := m.NextSpaceDelimitedParameter()
			assert.NoError(t, err)
			assert.Equal(t, param, "firstparam")

			param, err = m.NextSpaceDelimitedParameter()
			assert.NoError(t, err)
			assert.Equal(t, param, "secondparam")

			param = m.FinalParameter()
			assert.Equal(t, param, "final param with spaces")
		},
	},
	{
		"OneLongFinalParameter",
		func(t *testing.T) {
			for _, lineEnding := range []string{"", "\n", "\r", "\r\n", "\n\r"} {
				testName := fmt.Sprintf("lineEnding%x", lineEnding)

				t.Run(testName, func(t *testing.T) {
					m := newMessageParser("one long final parameter" + lineEnding)

					param := m.FinalParameter()
					assert.Equal(t, param, "one long final parameter")

					param = m.FinalParameter()
					assert.Equal(t, param, "")
				})
			}
		},
	},
	{
		"MultipleSpaces",
		func(t *testing.T) {
			m := newMessageParser("foo  bar\n\r")

			param, err := m.NextSpaceDelimitedParameter()
			assert.NoError(t, err)
			assert.Equal(t, param, "foo")

			param, err = m.NextSpaceDelimitedParameter()
			assert.Error(t, err, "blah")
			assert.Equal(t, param, "")
		},
	},
	{
		"StartsWithSpace",
		func(t *testing.T) {
			m := newMessageParser(" foo")

			param, err := m.NextSpaceDelimitedParameter()
			assert.Error(t, err, "blah")
			assert.Equal(t, param, "")
		},
	},
}

func TestMessageParser(t *testing.T) {
	for _, testCase := range messageParserTestCases {
		t.Run(testCase.label, func(t *testing.T) {
			t.Parallel()
			testCase.testFunc(t)
		})
	}
}
