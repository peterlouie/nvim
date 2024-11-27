return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'reisub0/hot-reload.vim',
    'wa11breaker/flutter-bloc.nvim'
  },
  config = function()
    local flutter = require("flutter-tools")

    flutter.setup({
      outline = {
        fallback = "widget_guides",
        open_cmd = "30vnew",
        auto_open = false
      },

      ui = {
        border = "rounded",
        notification_style = 'plugin',
      },


      widget_guides = {
        enabled = true,
      },

      closing_tags = {
        enabled = true,
        highlight = 'LineNr',
        -- highlight = 'ErrorMsg',
        prefix = '<--',
        priority = 0,
      },
    })
  end,

  vim.keymap.set('n', '<F4>', '<cmd>:FlutterEmulators<CR>', { desc = 'Flutter Emulators' }),
  vim.keymap.set('n', '<F5>', '<cmd>:FlutterReload<CR>', { desc = 'Flutter Reload' }),
  vim.keymap.set('n', '<F6>', '<cmd>:FlutterRestart<CR>', { desc = 'Flutter Hot Reload' }),
  vim.keymap.set('n', '<F7>', '<cmd>:FlutterLogClear<CR>', { desc = 'Flutter Log Clear' }),
  vim.keymap.set('n', '<F8>', '<cmd>:FlutterRun<CR>', { desc = 'Flutter Run' }),
  vim.keymap.set('n', '<leader>fq', '<cmd>:FlutterQuit<CR>', { desc = 'Flutter Quit' }),

}
