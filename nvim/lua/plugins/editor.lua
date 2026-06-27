return {
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup({})
    end,
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      winopts = {
        width = 0.95,
        -- preview = { delay = 50 },
      },
      files = { cmd = 'fd --type file' },
      grep = {
        rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=512 -g '!*lock*'",
      }
    },
    config = function(_, opts)
      local function set_keymap(...) vim.api.nvim_set_keymap(...) end
      local opt = { noremap=true, silent=true }
      -- Files and buffers
      set_keymap('n', 'ff', '<cmd>FzfLua files<CR>', opt)
      set_keymap('n', 'fj', '<cmd>FzfLua live_grep<CR>', opt)
      set_keymap('n', 'fh', '<cmd>FzfLua live_grep_resume<CR>', opt)
      set_keymap('n', 'fb', '<cmd>FzfLua buffers<CR>', opt)
      set_keymap('n', 'fg', '<cmd>FzfLua git_status<CR>', opt)
      set_keymap('n', 'fr', '<cmd>FzfLua resume<CR>', opt)
      set_keymap('n', 'grr', '<cmd>FzfLua lsp_references<CR>', opt)
      set_keymap('n', 'gre', '<cmd>FzfLua diagnostics_document<CR>', opt)
      require("fzf-lua").setup(opts)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local ts = require("nvim-treesitter")
      local languages = { "go", "typescript", "tsx", "javascript", "json", "dart", "html", "htmldjango", "sql", "v", "vue", "svelte", "lua" }

      ts.setup({
        install_dir = vim.fn.stdpath("data") .. "/site",
      })

      ts.install(languages)

      vim.api.nvim_create_autocmd("FileType", {
        pattern = languages,
        callback = function()
          pcall(vim.treesitter.start)
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "stevearc/dressing.nvim",
    config = function()
      require("dressing").setup()
    end,
  },
}
