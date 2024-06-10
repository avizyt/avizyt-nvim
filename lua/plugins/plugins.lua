local plugins = {
  {
    "karb94/neoscroll.nvim",
    lazy = false,
    config = function()
      require "configs.neoscroll"
    end,
  },
  {
    "stevearc/overseer.nvim",
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
      require "configs.guard"
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
