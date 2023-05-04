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
    { 'goolord/alpha-nvim' }, -- Dashboard
    { 'NvChad/nvim-colorizer.lua' }, -- Highlight colors of # hex numbers, yoinked from nvchad
    {
        'akinsho/bufferline.nvim', -- Tab like interface for buffers on top row
        version = "v3.*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    { 'nvim-lualine/lualine.nvim' }, -- Informative line on bottom
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    { 'lukas-reineke/indent-blankline.nvim' }, -- Show vertical lines on indents
    { 'rcarriga/nvim-notify' }, -- Fancy popups in neovim
    { 'RRethy/vim-illuminate' },

    -- Utils
    { 'moll/vim-bbye' }, -- Sane buffer closing :Bdelete
    { "windwp/nvim-autopairs" }, -- Autopairs, powerful tag closing tool { ( ' etc
    { 'numtostr/comment.nvim' }, -- Comment tool gcc etc
    {
        'nvim-telescope/telescope.nvim', -- Telescope fzf
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-lua/popup.nvim',
        }
    },
    { 'akinsho/toggleterm.nvim' },
    { 'brooth/far.vim' }, -- Find and replace tool
    { 'folke/which-key.nvim' },

    -- Lsp, completion and formatting
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            {'neovim/nvim-lspconfig'},
            {
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    },
    { 'jose-elias-alvarez/null-ls.nvim' },
    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
            'nvim-treesitter/playground'
        },
        build = ":TSUpdate"
    },

}

require("lazy").setup(plugins, opts)
