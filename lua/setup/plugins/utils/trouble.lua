return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>",              desc = "Open/close trouble list" },
    { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Open trouble document diagnostics" },
    { "<leader>xt", "<cmd>TodoTrouble<CR>",                             desc = "Open todos in trouble" },
  },

  config = function()
    local trouble = require("trouble")

    trouble.setup({
      modes = {
        preview_float = {
          mode = "diagnostics",
          preview = {
            type = "float",
            relative = "editor",
            border = "rounded",
            title = "Preview",
            title_pos = "center",
            position = { 0, -2 },
            size = { width = 0.3, height = 0.3 },
            zindex = 200,
          },
        },
      },
    })
  end
}
