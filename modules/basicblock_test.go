package amdsidep

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestNewBasicBlock(t *testing.T)  {
  assert := assert.New(t)

  bb := NewBasicBlock("label_0000")
  assert.Equal("label_0000", bb.Label)
}

func TestBasicBlockAdd(t *testing.T) {
}
