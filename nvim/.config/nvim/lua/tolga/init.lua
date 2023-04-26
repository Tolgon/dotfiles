-- Core neovim options
require "tolga.options"

-- Plugins
require "tolga.plugins"

require "tolga.alpha"
require "tolga.nvim-tree"
require "tolga.bufferline"
require "tolga.which-key"

-- Load last to ensure none gets overwritten
require "tolga.keymaps"
