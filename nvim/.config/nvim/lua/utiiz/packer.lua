-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Status line
  use 'nvim-lualine/lualine.nvim'

  -- Git
  use 'mhinz/vim-signify'
  use 'tpope/vim-fugitive'
  use 'f-person/git-blame.nvim'
  use 'github/copilot.vim'
  use 'mbbill/undotree'

  -- colorscheme
  use { "catppuccin/nvim", as = "catppuccin" }
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('nvim-treesitter/nvim-treesitter-context')

  --File and folder management
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use("ThePrimeagen/harpoon")

  -- Utils
  use 'jiangmiao/auto-pairs'

  -- Language support
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      -- Snippet Collection (Optional)
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- Dart
  use 'dart-lang/dart-vim-plugin'

  -- Rust
  use 'timonv/vim-cargo'

  -- Vue
  use 'posva/vim-vue'

  -- Transparency
  use 'xiyaowong/nvim-transparent'
end)

