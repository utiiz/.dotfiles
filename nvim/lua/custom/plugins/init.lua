-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },
  {
    'f-person/git-blame.nvim',
    config = function()
      vim.g.gitblame_date_format = '%d/%m/%Y'
      vim.g.gitblame_display_virtual_text = 0
      vim.g.gitblame_delay = 0
      vim.g.gitblame_message_template = '<author> • <date>'
      vim.g.gitblame_message_when_not_committed = 'Oh please, commit this !'
    end,
  },
  {
    'folke/persistence.nvim',
    event = 'BufReadPre', -- this will only start session saving when an actual file was opened
    lazy = false,
    config = function()
      require('persistence').setup {}
      vim.keymap.set('n', '<leader>wr', function()
        require('persistence').load()
      end, { desc = '[W]orkspace [R]estore' })
    end,
  },
  {
    'Exafunction/codeium.vim',
  },
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },
  {
    'lukas-reineke/headlines.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('headlines').setup {}
    end,
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon.setup {}

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():append()
      end)
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      -- vim.keymap.set('n', '<C-h>', function()
      --   harpoon:list():select(1)
      -- end)
      -- vim.keymap.set('n', '<C-j>', function()
      --   harpoon:list():select(2)
      -- end)
      -- vim.keymap.set('n', '<C-k>', function()
      --   harpoon:list():select(3)
      -- end)
      -- vim.keymap.set('n', '<C-l>', function()
      --   harpoon:list():select(4)
      -- end)
    end,
  },
  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      vim.g.lazygit_floating_window_scaling_factor = 1
      vim.cmd.hi 'NormalFloat guibg=#191724 guifg=#E0DEF4'
    end,
  },
  {
    'joerdav/templ.vim',
  },
}
