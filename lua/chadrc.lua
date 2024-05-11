-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "mountain",

	cmp = {
		icons = true,
		lspkind_text = true,
		style = "default", -- default/flat_light/flat_dark/atom/atom_colored
	  },
	  
	telescope = {
		style = "bordered"
	},


  nvdash = {
	
	header = {
		"──██─█╔══╗██▀▄╔══╗██─█── ██▀▄╔══╗██─█──",
		"──▌▐▀█║╔╗║▌▐▀▀║╚╝║▌▐─█── ▌▐─█║╔╗║▌▐─█──",
		"──██─█║╠╣║██──║╔═╝▀▀▀█── ███▀║╠╣║▀▀▀█──",
		"──────╚╝╚╝────╚╝──▀▀▀▀ ──────╚╝╚╝▀▀▀▀──",
	},

	buttons = {
		{ "  Find File", "Spc f f", "Telescope find_files" },
		{ "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
		{ "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
		{ "  Bookmarks", "Spc m a", "Telescope marks" },
		{ "  Themes", "Spc t h", "Telescope themes" },
		{ "  Mappings", "Spc c h", "NvCheatsheet" },
	  },
	-- },
    load_on_startup = true,
  },

  statusline = {
	theme = "default",
	separator_style = "default"
  },

  tabufline = {
	lazyload = false,
  }

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

return M
