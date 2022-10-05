-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Status line
  use 'nvim-lualine/lualine.nvim'
  
  -- Colorscheme
  use { "catppuccin/nvim", as = "catppuccin" }
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('nvim-treesitter/nvim-treesitter-context')

  --File and folder management
  use("nvim-lua/plenary.nvim")
  use("nvim-lua/popup.nvim")
  use('nvim-telescope/telescope.nvim')
  use("ThePrimeagen/harpoon")

  -- Snippets
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'natebosch/dartlang-snippets'

  -- Utils
  use 'tpope/vim-surround'

  -- Language support
  use {'neoclide/coc.nvim', branch =  'release'}
  use 'jiangmiao/auto-pairs'

  -- Dart
  use 'dart-lang/dart-vim-plugin'
end)
