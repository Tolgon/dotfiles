require("tolga.ui.alpha")
require("tolga.ui.nvim-tree")
require("tolga.ui.bufferline")
require("tolga.ui.catppuccin")
require("tolga.ui.lualine")
require("tolga.ui.indent-blankline")
require("tolga.ui.notify")
require("tolga.ui.navic")

-- Remove alacritty padding on neovim
-- function Sad(line_nr, from, to, fname)
-- 	vim.cmd(string.format("silent !sed -i '%ss/%s/%s/' %s", line_nr, from, to, fname))
-- end
--
-- function IncreasePadding()
-- 	Sad("10", 0, 10, "~/.dotfiles/alacritty/.config/alacritty/alacritty.yml")
-- 	Sad("11", 0, 5, "~/.dotfiles/alacritty/.config/alacritty/alacritty.yml")
-- end
--
-- function DecreasePadding()
-- 	Sad("10", 10, 0, "~/.dotfiles/alacritty/.config/alacritty/alacritty.yml")
-- 	Sad("11", 5, 0, "~/.dotfiles/alacritty/.config/alacritty/alacritty.yml")
-- end
--
-- vim.cmd([[
--   augroup ChangeAlacrittyPadding
--    au! 
--    au VimEnter * lua DecreasePadding()
--    au VimLeavePre * lua IncreasePadding()
--   augroup END 
-- ]])
