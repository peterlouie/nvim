return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'nvim-tree/nvim-web-devicons',              enabled = vim.g.have_nerd_font },
    'nvim-telescope/telescope-ui-select.nvim',
  },

  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local open_with_trouble = require("trouble.sources.telescope").open

    telescope.setup({
      defaults = {
        theme = 'dropdown',
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next,     -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ['<C-d>'] = require('telescope.actions').delete_buffer,
            ["<C-t>"] = open_with_trouble,
          },
        },
      },

      pickers = {
        find_files = {
          file_ignore_patterns = { 'node_modules', '.git', '.venv' },
          hidden = true,
        },
      },
      live_grep = {
        file_ignore_patterns = { 'node_modules', '.git', '.venv' },
        additional_args = function(_)
          return { '--hidden' }
        end,
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },

    })

    telescope.load_extension("fzf")

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff',
      ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>",
      { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg',
      ":lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({}))<cr>",
      { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb',
      ":lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({}))<cr>",
      { desc = 'Telescope buffers' })
    -- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Telescope old files ' })
    vim.keymap.set('n', '<leader>ft', "<cmd>TodoTelescope<cr>", { desc = 'Telescope find todo' })
  end
}
