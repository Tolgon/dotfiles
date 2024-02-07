local M = {
  "rasulomaroff/reactive.nvim",
}

function M.config()
  require("reactive").setup {
    builtin = {
      cursorline = true,
      cursor = true,
      modemsg = true,
    },
  }
end

return M
