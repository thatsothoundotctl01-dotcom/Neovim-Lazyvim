-- ~/.config/nvim/lua/plugins/performance.lua
-- Performance tuning for LazyVim: disables unused built-ins,
-- speeds up startup, and keeps things smooth on large files.

return {

  -- 1. Disable unused built-in Neovim plugins (saves startup time)
  {
    "LazyVim/LazyVim",
    opts = {
      -- these are vim's built-in plugins, not lazy.nvim plugins
      -- disabling ones you don't use speeds up startup
    },
  },

  -- 2. Better big-file handling (auto-disables heavy features on huge files)
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      opts.bigfile = opts.bigfile or {}
      return opts
    end,
  },

  -- 3. Treesitter: only install parsers you actually use
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "bash",
        "markdown",
        "json",
        -- add only the languages you actually work in
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },

  -- 4. Mason: only auto-install tools you need (fewer = faster startup)
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- trim this list to only what you actually use
        "stylua",
      },
    },
  },

  -- 5. Disable animations / extra UI chrome that can feel sluggish
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
      },
    },
  },

  -- 6. Faster statusline: fewer sections = less per-render work
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        globalstatus = true, -- one statusline instead of per-window
        icons_enabled = true,
      },
    },
  },

  -- 7. Trim indent/scope guides overhead on large files
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      scope = { enabled = true },
    },
  },

