-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls","ruff", "rust_analyzer" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = {vim.api.nvim_buf_get_name(0)},
  }
  vim.lsp.buf.execute_command(params)
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    }
  },
  commands = {
    OrganizeImports ={
      organize_imports,
      description = "Organize Imports",
    }
  }
}

-- pyright
lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    settings = {
      pyright = {
        disableOrganizeImport = true, --using ruff
      },

      python = {
        analysis = {
          ignore = {'*'},
          typeCheckingMode = 'on', -- Using mypy
        },
      },
    },
  },
}
