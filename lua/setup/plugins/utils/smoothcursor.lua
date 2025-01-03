return {
  'gen740/SmoothCursor.nvim',
  config = function()
    require('smoothcursor').setup({
      type = "default", -- Cursor movement calculation method, choose "default", "exp" (exponential) or "matrix".

      cursor = "", -- Cursor shape (requires Nerd Font). Disabled in fancy mode.
      texthl = "SmoothCursor", -- Highlight group. Default is { bg = nil, fg = "#FFD400" }. Disabled in fancy mode.
      linehl = nil, -- Highlights the line under the cursor, similar to 'cursorline'. "CursorLine" is recommended. Disabled in fancy mode.

      fancy = {
        enable = true, -- enable fancy mode
        head = { cursor = "▷", texthl = "SmoothCursor", linehl = nil }, -- false to disable fancy head
        body = {
          { cursor = "󰝥", texthl = "SmoothCursorRed" },
          { cursor = "󰝥", texthl = "SmoothCursorOrange" },
          { cursor = "●", texthl = "SmoothCursorYellow" },
          { cursor = "●", texthl = "SmoothCursorGreen" },
          { cursor = "•", texthl = "SmoothCursorAqua" },
          { cursor = ".", texthl = "SmoothCursorBlue" },
          { cursor = ".", texthl = "SmoothCursorPurple" },
        },
        tail = { cursor = nil, texthl = "SmoothCursor" } -- false to disable fancy tail
      },
    })
  end
}
