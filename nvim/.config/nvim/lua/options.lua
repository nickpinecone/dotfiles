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
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", {})
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", {})
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", {})
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", {})

vim.keymap.set("i", "kj", "<Esc>", {})

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], {})
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], {})
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]], {})
