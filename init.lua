local set = vim.opt

-- Set the behavior of tab
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.relativenumber = true
set.splitbelow = true
set.splitright = true
vim.g.mapleader = ' '
set.completeopt = { 'menu', 'menuone', 'noselect' }
--vim.wo.colorcolumn = '80'

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'folke/trouble.nvim'
Plug 'akinsho/flutter-tools.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})
Plug('akinsho/toggleterm.nvim', {tag = 'v1.*'})

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

-- For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
vim.call('plug#end')

require('language-config')
require('trouble').setup { icons = true }
require('files')
require("modeline")
require('keymap')
require("toggleterm").setup{
  open_mapping = "<C-t>"
}
