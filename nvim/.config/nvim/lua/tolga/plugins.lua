-- Plugin manager used: 'folke/lazy.nvim'
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load the plugins in this object
local plugins = {

    -- General UI
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme tokyonight-night]])
        end,
    },
    { 'nvim-tree/nvim-web-devicons' }, -- A bunch of plugins use this.
    {
        'akinsho/bufferline.nvim',
        version = "v3.*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- File system
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- Neovim helpers.
    { 'folke/which-key.nvim' }

}

require("lazy").setup(plugins, opts)
