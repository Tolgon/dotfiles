local servers = {
	"lua_ls",
	"cssls",
	"html",
	"emmet_ls",
	"tsserver",
	"bashls",
	"jsonls",
	"rust_analyzer",
	"angularls",
}

local lsp_status_ok, lsp = pcall(require, "lsp-zero")
if not lsp_status_ok then
	return
end

lsp.preset({
	manage_nvim_cmp = {
		set_sources = "recommended",
	},
})

lsp.on_attach(function(client, bufnr)
	-- lsp.default_keymaps({ buffer = bufnr })
	local keymap = vim.keymap.set
	keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { buffer = true })
	keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { buffer = true })
	keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { buffer = true })
	keymap("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", { buffer = true })
	keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { buffer = true })
	keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", { buffer = true })
end)

lsp.set_sign_icons({
	error = "",
	warn = "",
	hint = "",
	info = "",
})

lsp.ensure_installed(servers)

-- (Optional) Configure lua language server for neovim
require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- Custom config, put after lsp.setup to override lsp-zero defaults
vim.diagnostic.config({
	virtual_text = false, -- disable virtual text
	update_in_insert = true,
	underline = true,
	severity_sort = true,
	float = {
		focusable = true,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = "rounded",
})
