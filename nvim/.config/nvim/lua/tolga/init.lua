-- Core neovim options
require "tolga.options"

-- Plugins
require "tolga.plugins"

-- UI directory
require "tolga.ui"

-- LSP, completion & Treesitter
require "tolga.lang"

-- Utils
require "tolga.which-key"
require "tolga.autopairs"
require "tolga.telescope"
require "tolga.toggleterm"
require "tolga.comment"

-- Load last to ensure none gets overwritten
require "tolga.keymaps"
