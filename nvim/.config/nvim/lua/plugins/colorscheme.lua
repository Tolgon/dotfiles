return {
  -- add colorscheme
  { "rose-pine/neovim" },

  --configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
