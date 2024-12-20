vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Use system clipboard for yank
vim.keymap.set({ "n", "v" }, "y", '"+y')

-- Use system clipboard for cut
vim.keymap.set({ "n", "v" }, "d", '"+d')

-- Use system clipboard for paste
vim.keymap.set({ "n", "v" }, "p", '"+p')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- This is going to get me cancelled
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<leader>]", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>[", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "]d", function()
	vim.diagnostic.goto_next()
end)
vim.keymap.set("n", "[d", function()
	vim.diagnostic.goto_prev()
end)

vim.keymap.set("i", "<c-k>", function()
	vim.lsp.buf.signature_help()
end)
