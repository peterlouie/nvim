return
{
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.

  config = function()
    local everforest = require("everforest")

    everforest.setup({
      vim.cmd([[colorscheme everforest]])
    })
  end,
}

-- {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--
--   opts = {
--     term_colors = true,
--     transparent_background = true,
--     dim_inactive = {
--       enabled = true,    -- dims the background color of inactive window
--       shade = "dark",
--       percentage = 0.15, -- percentage of the shade to apply to the inactive window
--     }
--   },
--
--   config = function()
--     local catppuccin = require("catppuccin")
--
--     catppuccin.setup({
--       vim.cmd([[colorscheme catppuccin-mocha]]),
--
--       -- transparent_background = true,
--     })
--   end,
-- }
