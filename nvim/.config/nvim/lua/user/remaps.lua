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

vim.keymap.set("n", "<A-k>", ":<c-u>execute 'move -1-'. v:count1<cr>", {})
vim.keymap.set("n", "<A-j>", ":<c-u>execute 'move +'. v:count1<cr>", {})

vim.keymap.set("v", "<A-k>", ":<C-U>exec \"'<,'>move '<-\" . (1+v:count1)<CR>gv", {})
vim.keymap.set("v", "<A-j>", ":<C-U>exec \"'<,'>move '>+\" . (0+v:count1)<CR>gv", {})

vim.keymap.set("v", "<", "<gv", {})
vim.keymap.set("v", ">", ">gv", {})

vim.keymap.set("n", "<leader>sr", ":TermExec cmd=\"dotnet run\"<CR>", {})
vim.keymap.set("n", "<leader>sb", ":TermExec cmd=\"dotnet build\"<CR>", {})
