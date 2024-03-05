-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
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
}
