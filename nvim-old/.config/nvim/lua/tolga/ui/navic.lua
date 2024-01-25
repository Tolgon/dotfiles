-- enable navic in winbar, for more options go to lang/lsp/handlers
vim.o.winbar = " %{%v:lua.require'nvim-navic'.get_location()%}"
