local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "tolga.lang.lsp.mason"
require "tolga.lang.lsp.handlers".setup()
require "tolga.lang.lsp.null-ls"
