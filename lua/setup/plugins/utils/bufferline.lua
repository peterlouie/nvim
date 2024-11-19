return {
  'akinsho/bufferline.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons", },
  version = "*",

  config = function()
    local bufferline = require('bufferline')

    bufferline.setup({
      options = {
        mode = "tabs",
        separator_style = "padded_slant",
        hover = {
          enabled = true,
          delay = 200,
          reveal = { 'close' }
        },

        buffer_close_icon = '󰅖',
        modified_icon = '● ',
        -- close_icon = ' ',
        close_icon = 'x',
        left_trunc_marker = ' ',
        right_trunc_marker = ' ',

        diagnostics = 'nvim_lsp',

        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end

      }
    })
  end
}
