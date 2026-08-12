return {
  -- shows all keybinds live when you press <leader>
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },

  -- fast fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- file tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
    opts = { window = { width = 30 } },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = { options = { theme = "auto", globalstatus = true } },
  },

  -- treesitter (syntax)
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = { "lua", "vim", "vimdoc", "bash", "json", "markdown" },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },

  -- git signs in gutter
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },
}
