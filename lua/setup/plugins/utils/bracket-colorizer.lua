return {
  "HiPhish/rainbow-delimiters.nvim",

  config = function()
    local rainbow_delimiters = require("rainbow-delimiters.setup")
    rainbow_delimiters.setup({
      -- strategy = {
      --   [''] = rainbow_delimiters.strategy['global'],
      --   commonlisp = rainbow_delimiters.strategy['local'],
      -- },
    })
  end,
}
