vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

--tabs & indentation
opt.tabstop = 2       -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2    -- 2 spaces for indent width
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = true
opt.linebreak = true

--search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- if you include mixed case in your search, assumes you want case sensitive

--cursor
-- opt.cursorline = true
opt.guicursor = {
  'n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100',
  'i-ci:ver25-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100',
  'r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100'
}

--turn on termguicolors for tokyonight colorscheme to work
--(have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes"  -- show sign column so that text doesn't shift

--backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

--split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

--turn off swapfile
opt.swapfile = false

--remain center
vim.cmd([[:nnoremap k kzz]])
vim.cmd([[:nnoremap j jzz]])

--transparency
vim.cmd([[autocmd Colorscheme * highlight Normal guibg=none]])

--Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- --code folding
vim.cmd([[:set foldcolumn=1]])
vim.cmd([[:set foldlevel=99]])
vim.cmd([[:set foldlevelstart=99]])
vim.cmd([[:set foldmethod=expr]])
vim.cmd([[:set foldexpr=nvim_treesitter#foldexpr()]])
