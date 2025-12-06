return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local opts = { noremap=true, silent=true }
      vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', opts)
      vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>NvimTreeFindFile<CR>', opts)
      require("nvim-tree").setup({
        view = {
          width = 60,
          side = "right",
        },
      })
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function(_, opts)
      require("gitsigns").setup()
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function(_, opts)
      vim.cmd [[colorscheme tokyonight-night]]
    end,
  },
  {
    "tiagovla/tokyodark.nvim",
    config = function(_, opts)
      -- require("tokyodark").setup(opts)
      -- vim.cmd [[colorscheme tokyodark-night]]
    end,
  },
  {
    "Alexis12119/nightly.nvim",
    config = function(_, opts)
      -- require("nightly").setup(opts)
      -- vim.cmd [[colorscheme nightly]]
    end,
  },
  {
    "catppuccin/nvim",
    opts = { flavour = "mocha" },
    config = function(_, opts)
      -- require("catppuccin").setup(opts)
      -- vim.cmd [[colorscheme catppuccin]]
    end,
  },
}
