-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    dir = '~/lab/gitlab-review.nvim',
    name = 'gitlab-review',
    dev = { true },
    config = function()
      local gitlab = require 'gitlab-review'
      gitlab.setup()

      vim.keymap.set('n', '<leader>gcr', gitlab.get_current_repo, { desc = '[G]et [C]urrent [R]epo' })
    end,
  },
  {
    'harrisoncramer/gitlab.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'stevearc/dressing.nvim', -- Recommended but not required. Better UI for pickers.
      'nvim-tree/nvim-web-devicons', -- Recommended but not required. Icons in discussion tree.
    },
    enabled = true,
    build = function()
      require('gitlab.server').build(true)
    end, -- Builds the Go binary
    config = function()
      local gitlab = require 'gitlab'
      gitlab.setup()

      vim.keymap.set('n', '<leader>gmr', gitlab.choose_merge_request, { desc = '[G]itlab Choose [M]erge [R]equest' })
      vim.keymap.set('n', '<leader>gp', gitlab.pipeline, { desc = '[G]itlab [P]ipeline' })
    end,
  },
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-jest',
    },
    config = function()
      local neo = require 'neotest'
      neo.setup {
        adapters = {
          require 'neotest-jest' {
            jestCommand = 'npm test --',
            env = { CI = true },
            cwd = function(path)
              return vim.fn.getcwd()
            end,
          },
        },
      }

      vim.keymap.set('n', '<leader>tr', neo.run.run)
      -- vim.keymap.set('n', '<leader>to', neo.output_panel.open())
      vim.keymap.set('n', '<leader>ts', neo.summary.open)
    end,
  },
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup {
        columns = {
          'icon',
        },
        keymaps = {
          ['<C-h>'] = false,
          ['<M-h>'] = 'actions.select_split',
        },
        view_options = {
          show_hidden = true,
        },
      }

      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
      vim.keymap.set('n', '<leader>-', require('oil').toggle_float)
    end,
  },
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
        harpoon:list():add()
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
