------------------------------------------------------------

--	Plugins
--	Ewan Wakeman

------------------------------------------------------------

-- Install Packer (if not currently installed)
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim' .. install_path)
end

vim.api.nvim_exec(
  [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]],
  false
)

-- Declaring plugins

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- use packer
  use 'tpope/vim-fugitive' -- git commands
  use 'tpope/vim-commentary' -- "gc" commenting in visual mode
  use 'tpope/vim-surround' -- tool for switching brackets around
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  } -- treesitter for highlighting, editing etc... code
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'itchyny/lightline.vim' -- lightline status bar (bottom bar)
  use 'folke/tokyonight.nvim' -- tokyonight theme
  use 'neovim/nvim-lspconfig' -- configurations for built in lsp
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin.
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip' -- Snippets plugin.
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- UI for selecting things
end)
  use { 'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'} } -- shows open buffers
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- Adds git related info in the signs columns


luasnip = require 'luasnip'
