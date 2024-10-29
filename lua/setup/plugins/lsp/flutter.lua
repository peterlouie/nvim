return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
    -- 'dart-lang/dart-vim-plugin',
  },
  config = true,

  -- vim.keymap.set("n", "<leader>f", "<cmd>FlutterOutlineToggle<CR>")
}
