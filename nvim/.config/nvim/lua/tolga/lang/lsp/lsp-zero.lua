local lsp_status_ok, lsp = pcall(require, "lsp-zero")
if not lsp_status_ok then
    return
end

lsp.preset({
    manage_nvim_cmp = {
        set_sources = 'recommended'
    }
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
