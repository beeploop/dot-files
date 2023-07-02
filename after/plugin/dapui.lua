-- open debugger 
vim.keymap.set("n", "<leader>dbo", "<cmd>lua require('dapui').toggle()<CR>")
vim.keymap.set("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")

require("dapui").setup()
