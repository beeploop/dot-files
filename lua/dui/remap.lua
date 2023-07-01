vim.g.mapleader = " "

--vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ee", function()
    vim.cmd("NvimTreeToggle")
end)

--shortcut to focus on the nvim tree
vim.keymap.set("n", "<leader>ef", function()
    vim.cmd("NvimTreeFocus")
end)

-- shortcut for opening fugitive Git
vim.keymap.set("n", "<leader>gs", function()
    vim.cmd("Git")
end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "ff", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- rename all instances of word under the cursor
vim.keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make it rain
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- source the current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

--shortcut to view full error in line
vim.keymap.set("n", "<leader>e", function()
    vim.cmd("lua vim.diagnostic.open_float()")
end)

-- wanna see what I look like in the inside??? You can also do this with Shift+k
vim.keymap.set("n", "<leader>df", function()
    vim.cmd("lua vim.lsp.buf.hover()")
end)
