require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-q>", "<cmd>q<CR>", { desc = "Save and Quit" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
-- Code Runner
map("n", "<leader>fp", ":w <bar> exec '!python '.shellescape('%')<CR>", { desc = "Run Python Code" })
map("n", "<leader>fj", ":w <bar> exec '!node '.shellescape('%')<CR>", { desc = "Run JS code" })
map("n", "<leader>fr", ":w <bar> exec '!rustc '.shellescape('%')<CR> :!./%:r<CR>", { desc = "Run Rust code" })
map("n", "<leader>fc", ":w <bar> exec '!g++ % -o %:r'<CR> :!./%:r<CR>", { desc = "Run C++ Code" })
