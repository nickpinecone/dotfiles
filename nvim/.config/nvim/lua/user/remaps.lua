vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", {})
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", {})
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", {})
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", {})

vim.keymap.set("n", "<leader>w", ":w<CR>", {})
vim.keymap.set("n", "<leader>q", ":q<CR>", {})

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], {})
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], {})
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]], {})

vim.keymap.set("n", "n", [[nzz]], {})
vim.keymap.set("n", "N", [[Nzz]], {})

vim.keymap.set("i", "kj", "<Esc>", {})
