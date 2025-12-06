return {
  {
    "neovim/nvim-lspconfig",
    config = function(_, opts)
      require("config.lsp.servers")
      require("config.lsp.keymaps")
    end,
  },
}
