return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'rcarriga/nvim-dap-ui',
    'leoluz/nvim-dap-go',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('dapui').setup {}
    require('dap-go').setup {}

    dap.adapters['pwa-node'] = {
      type = 'server',
      host = '127.0.0.1',
      port = '${port}',
      executable = {
        command = 'js-debug-adapter',
        args = { '${port}' },
      },
    }

    dap.configurations.javascript = {
      {
        name = 'Launch file',
        type = 'pwa-node',
        request = 'launch',
        program = '${file}',
        cwd = vim.fn.getcwd(),
      },
    }

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, { desc = 'Dap Toggle [B]reakpoint' })
    vim.keymap.set('n', '<F1>', dap.continue, { desc = 'Dap Continue' })
    vim.keymap.set('n', '<F2>', dap.step_over, { desc = 'Dap Step Over' })
    vim.keymap.set('n', '<F3>', dap.step_into, { desc = 'Dap Step Into' })
    vim.keymap.set('n', '<F4>', dap.step_out, { desc = 'Dap Step Out' })
  end,
}
