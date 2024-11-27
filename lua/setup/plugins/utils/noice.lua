return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {},
  vim.keymap.set("n", "<F11>", "<cmd>NoiceDismiss<CR>", { desc = "Remove noice" }),

  config = function()
    local noice = require("noice")
    local notify = require("notify")

    notify.setup({
      max_width = 40,
      max_height = 10,
      merge = true
    })

    noice.setup({

      messages = {
        enabled = true,
      },

      views = {
        cmdline_popup = {
          position = {
            row = 15,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
            row = 18,
            col = "50%",
          },
          size = {
            width = 60,
            height = 10,
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        },
      },
    })
  end
}
