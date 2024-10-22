return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "dart-lang/dart-vim-plugin",
    "thosakwe/vim-flutter"
  },
  opts = function()
    require("lspconfig").dartls.setup({
      cmd = { "dart", "language-server", "--protocol=lsp" },
    })
  end,
}
