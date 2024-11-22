return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'reisub0/hot-reload.vim',
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
    'wa11breaker/flutter-bloc.nvim'
  },

  vim.keymap.set('n', '<F5>', '<cmd>:FlutterReload<CR>', { desc = 'Flutter Reload' }),
  vim.keymap.set('n', '<F6>', '<cmd>:FlutterRestart<CR>', { desc = 'Flutter Hot Reload' }),
  vim.keymap.set('n', '<F7>', '<cmd>:FlutterLogClear<CR>', { desc = 'Flutter Log Clear' }),
  vim.keymap.set('n', '<F8>', '<cmd>:FlutterRun<CR>', { desc = 'Flutter Run' }),
  vim.keymap.set('n', '<leader>fq', '<cmd>:FlutterQuit<CR>', { desc = 'Flutter Quit' }),

  config = function()
    local flutter = require("flutter-tools")

    flutter.setup({
      widget_guides = {
        enabled = true,
      },

      decoration = {
        statusline = {
          device = true,
        }
      },

      lsp = {
        color = { -- show the derived colours for dart variables
          enabled = false, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
          background = false, -- highlight the background
          background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
          foreground = false, -- highlight the foreground
          virtual_text = true, -- show the highlight using virtual text
          virtual_text_str = "■", -- the virtual text character to highlight
        },

        -- see the link below for details on each option:
        -- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          analysisExcludedFolders = { "<path-to-flutter-sdk-packages>" },
          renameFilesWithClasses = "prompt", -- "always"
          enableSnippets = true,
          updateImportsOnRename = true,      -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
        }
      }
    })
  end
}
