local null_ls = require('null-ls');

null_ls.setup({
  debug = true,
  sources = {
    null_ls.builtins.formatting.rome,
  },
});

