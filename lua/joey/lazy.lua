local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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


require("lazy").setup({
    {'nvim-telescope/telescope.nvim'},
    {'nvim-lua/plenary.nvim'},
    {'nvim-treesitter/nvim-treesitter', lazy = false},
    {"catppuccin/nvim"},
    "Pocco81/auto-save.nvim",
    'bluz71/vim-moonfly-colors',
    'bluz71/vim-nightfly-colors',
    'alexvzyl/nordic.nvim',
    'folke/tokyonight.nvim',
    'rebelot/kanagawa.nvim',
    'navarasu/onedark.nvim',
    'theprimeagen/vim-be-good',
    {
        'vonheikemen/lsp-zero.nvim',
        branch = 'v3.x'
    },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'L3MON4D3/LuaSnip' },
    { 'nvim-tree/nvim-tree.lua' },
    { 'nvim-tree/nvim-web-devicons' },
}, {})
