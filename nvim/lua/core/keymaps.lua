-- Set mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- maintain visual mode after shifting > and <
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- improve "n" command (for searches)
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

-- Ctrl+L clear the highlight as well as redraw
keymap.set("n", "<C-L>", ":nohlsearch<CR>")
