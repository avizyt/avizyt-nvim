-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "kanagawa",

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
  },
  telescope = {
    style = "bordered",
  },

  nvdash = {
    header = {
      "──██─█╔══╗██▀▄╔══╗██─█── ██▀▄╔══╗██─█──",
      "──▌▐▀█║╔╗║▌▐▀▀║╚╝║▌▐─█── ▌▐─█║╔╗║▌▐─█──",
      "──██─█║╠╣║██──║╔═╝▀▀▀█── ███▀║╠╣║▀▀▀█──",
      "──────╚╝╚╝────╚╝──▀▀▀▀ ──────╚╝╚╝▀▀▀▀──",
    },

    buttons = {
      { "  Find File", "<leader> f f", "Telescope find_files" },
      { "󰈚  Recent Files", "<leader> f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "<leader> f w", "Telescope live_grep" },
      { "  Bookmarks", "<leader> m a", "Telescope marks" },
      { "  Themes", "<leader> t h", "Telescope themes" },
      { "  Mappings", "<leader> c h", "NvCheatsheet" },
    },
    -- },
    load_on_startup = true,
  },

  statusline = {
    theme = "default",
    separator_style = "default",
  },

  tabufline = {
    lazyload = false,
  },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

return M
