vim.g.mapleader = " "

-- use system clipboard for yank
vim.keymap.set({ "n", "v" }, "y", '"+y')

-- use system clipboard for cut
vim.keymap.set({ "n", "v" }, "d", '"+d')

-- use system clipboard for paste
vim.keymap.set({ "n", "v" }, "p", '"+p')

--vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ee", function()
    vim.cmd("NvimTreeToggle")
end)

-- Add a key mapping for inserting the code snippet
vim.api.nvim_set_keymap('i', '/err', 'if err != nil {\nreturn err\n}<ESC>', { noremap = true })

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

-- This is going to get me cancelled
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "ff", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>]", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>[", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- rename all instances of word under the cursor
vim.keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make it rain
vim.keymap.set("n", "<leader>mir", "<cmd>CellularAutomaton make_it_rain<CR>");
vim.keymap.set("n", "<leader>gol", "<cmd>CellularAutomaton game_of_life<CR>");

-- source the current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

--shortcut to view list of error with Telescope
vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<CR>")

-- wanna see what I look like in the inside??? You can also do this with Shift+k
vim.keymap.set("n", "<leader>df", function()
    vim.cmd("lua vim.lsp.buf.hover()")
end)

vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end)
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end)
vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end)
vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end)
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end)
