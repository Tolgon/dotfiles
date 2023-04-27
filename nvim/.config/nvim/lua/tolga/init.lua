-- Core neovim options
require "tolga.options"

-- Plugins
require "tolga.plugins"

-- UI directory
require "tolga.ui"

-- LSP, completion & Treesitter
require "tolga.lang"

require "tolga.which-key"
require "tolga.telescope"
require "tolga.toggleterm"

-- Load last to ensure none gets overwritten
require "tolga.keymaps"
