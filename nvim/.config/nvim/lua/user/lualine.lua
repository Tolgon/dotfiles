local M = {
  "nvim-lualine/lualine.nvim",
}

function M.config()
  require("lualine").setup {
    options = {
      component_separators = "|",
      section_separators = { left = "", right = "" },
      ignore_focus = { "NvimTree" },
    },
    sections = {
      lualine_a = { { "mode", icon = { "" } } },
      lualine_b = { "branch" },
      lualine_c = { "diagnostics" },
      lualine_x = { "filetype" },
      lualine_y = {},
      lualine_z = {
        {
          "location",
          icon = {
            "",
            align = "left",
          },
        },
        {
          "progress",
          icon = {
            "",
            align = "left",
            -- color = { fg = c.black },
          },
          separator = { right = "█", left = { "" } },
        },
      },
    },
    extensions = {},
  }
end

return M
