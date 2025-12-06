vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local opts = { buffer = args.buf }
    vim.keymap.set("n", "<leader>ee", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "<leader>ef", vim.lsp.buf.format, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  end,
})
