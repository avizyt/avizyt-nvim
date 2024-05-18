local ft = require "guard.filetype"

ft("typescript,javascript,typescriptreact"):fmt "prettier"
ft("python"):fmt "pyright"
ft("lua"):fmt "stylua"
ft("rust"):fmt "rust_analyzer"
ft("c,cpp"):fmt("clang-format"):lint "clang-tidy"
ft("*"):lint "codespell"

require("guard").setup {
  fmt_on_save = true,

  lsp_as_default_formatter = false,
}
