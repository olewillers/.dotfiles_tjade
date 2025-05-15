-- ~/.config/nvim/lua/core/keybindings.lua
--
-- Author: Ole Willers

local keymap = vim.keymap.set
local opts = { noremap = true }

-- Leader-Key
vim.g.mapleader = " "
vim.g.maplocalleader = ","

keymap({ "n", "v" }, "<leader>s", ":w<CR>", opts) -- save
keymap({ "n", "v" }, "<leader>q", ":q<CR>", opts) -- quit
keymap({ "n", "v" }, "<leader>Q", ":q!<CR>", opts) -- force quit
keymap("v", "<leader>y", '"+y', opts) -- yank selection to system clipboard
keymap("n", "<leader>yy", '"+yy', opts) -- yank line to system clipboard

-- keymaps for nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
