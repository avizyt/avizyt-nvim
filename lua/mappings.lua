require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-q>", "<cmd>q<CR>", { desc = "Save and Quit"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "mp", ":w <bar> !python % <CR>", {desc = "Run Python Code"})

