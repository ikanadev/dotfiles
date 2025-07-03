return {
  {
    "neovim/nvim-lspconfig",
    config = function(_, opts)
      lsp = require("lspconfig")
      lsp.dartls.setup{}
      -- lsp.biome.setup{}
      -- lsp.oxlint.setup{}
      lsp.gopls.setup{}
      lsp.ts_ls.setup{}
      lsp.svelte.setup{}
      lsp.protols.setup{}
			lsp.harper_ls.setup{} -- grammar check for devs
      -- lsp.volar.setup{filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}}
      -- lsp.volar.setup{}
      lsp.pylsp.setup{}
      lsp.pyright.setup{}
      -- lsp.postgres_lsp.setup{}
      lsp.tailwindcss.setup{}
      lsp.buf_ls.setup{}
      lsp.vls.setup{}
			lsp.rust_analyzer.setup{}
			-- lsp.golangci_lint_ls.setup{}
			lsp.zls.setup{}
			-- lsp.csharp_ls.setup{}
			lsp.html.setup{}
			lsp.unocss.setup{}
			lsp.eslint.setup{}
      lsp.graphql.setup{}
    end,
  },
}
