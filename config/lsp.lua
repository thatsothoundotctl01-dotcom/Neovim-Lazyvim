return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    opts = { ensure_installed = { "lua_ls" } },
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      -- add more servers here, e.g. lspconfig.pyright.setup({})
    end,
  },

  -- fast, lightweight autocomplete
  {
    "saghen/blink.cmp",
    event = "InsertEnter",
    version = "*",
    opts = {
      keymap = { preset = "default" },
      appearance = { nerd_font_variant = "mono" },
      sources = { default = { "lsp", "path", "buffer" } },
    },
  },
}
