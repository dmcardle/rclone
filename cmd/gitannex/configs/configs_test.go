package configs

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestConfigDefinitionOneName(t *testing.T) {
	configFoo := ConfigDefinition{
		names:        []string{"foo"},
		description:  "The foo config is utterly useless.",
		defaultValue: "abc",
	}

	assert.Equal(t, "foo",
		configFoo.GetCanonicalName())

	assert.Equal(t,
		configFoo.description,
		configFoo.FullDescription())
}

func TestConfigDefinitionTwoNames(t *testing.T) {
	configFoo := ConfigDefinition{
		names:        []string{"foo", "bar"},
		description:  "The foo config is utterly useless.",
		defaultValue: "abc",
	}

	assert.Equal(t, "foo",
		configFoo.GetCanonicalName())

	assert.Equal(t,
		"(synonyms: bar) The foo config is utterly useless.",
		configFoo.FullDescription())
}

func TestConfigDefinitionThreeNames(t *testing.T) {
	configFoo := ConfigDefinition{
		names:        []string{"foo", "bar", "baz"},
		description:  "The foo config is utterly useless.",
		defaultValue: "abc",
	}

	assert.Equal(t, "foo",
		configFoo.GetCanonicalName())

	assert.Equal(t,
		`(synonyms: bar, baz) The foo config is utterly useless.`,
		configFoo.FullDescription())
}
