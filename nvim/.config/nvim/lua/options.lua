vim.g.mapleader = " "
vim.g.localmapleader = " "
vim.g.have_nerd_font = true

vim.opt.listchars:append({
    tab = "» ",
    space = "·",
})

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.clipboard = vim.opt.clipboard + "unnamedplus"

vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", {})
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", {})
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", {})
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", {})

vim.keymap.set("i", "kj", "<Esc>", {})
