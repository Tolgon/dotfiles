-- Core neovim options
require "tolga.options"

-- Plugins
require "tolga.plugins"

require "tolga.alpha"
require "tolga.nvim-tree"
require "tolga.bufferline"
require "tolga.which-key"
require "tolga.telescope"
require "tolga.indentline"
require "tolga.toggleterm"

-- Load last to ensure none gets overwritten
require "tolga.keymaps"
