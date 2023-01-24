local colorscheme = "catppuccin-mocha"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    return
end

require("catppuccin").setup {
  -- color_overrides = {
  --   mocha = {
  --     base = "#11111B",
  --     crust = "#1E1E2E",
  --   },
  -- }
}
