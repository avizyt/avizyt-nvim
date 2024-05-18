local lazy = require "lazy"

local plugins = {
  {
    "goolord/alpha-nvim",
    -- lazy = false,
    config = function()
      require("alpha").setup(require("alpha.themes.dashboard").config)
    end,
  },
  {
    "stevearc/overseer.nvim",
    lazy = true,
    config = function()
      return require "configs.overseer"
    end,
    opts = {},
  },
  {
    "nvimdev/guard.nvim",

    dependencies = {
      "nvimdev/guard-collection",
    },
    config = function()
      return require "configs.guard"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "typescript-language-server",
      },
    },
  },
}
return plugins
