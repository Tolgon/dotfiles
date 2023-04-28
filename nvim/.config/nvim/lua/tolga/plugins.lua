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
    { 'NvChad/nvim-colorizer.lua' }, -- Highlight colors of # hex numbers
    { 'goolord/alpha-nvim' }, -- Dashboard
    {
        'akinsho/bufferline.nvim',
        version = "v3.*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    { 'lukas-reineke/indent-blankline.nvim' },
    { 'rcarriga/nvim-notify' },
    { 'RRethy/vim-illuminate' },
    -- End UI

    -- Utils
    { "windwp/nvim-autopairs" }, -- Autopairs, powerful tag closing tool { ( ' etc
    { 'numtostr/comment.nvim' }, -- Comment tool gcc etc
    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-lua/popup.nvim',
        }
    },
    { 'akinsho/toggleterm.nvim' },
    { 'brooth/far.vim' }, -- Find and replace tool

    -- Language
    {
        'williamboman/mason.nvim',
        build = ":MasonUpdate" -- :MasonUpdate updates registry contents
    },
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason-lspconfig.nvim' },
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
            'nvim-treesitter/playground'
        },
        build = ":TSUpdate"
    },

    -- Neovim helpers
    { 'folke/which-key.nvim' }

}

require("lazy").setup(plugins, opts)
