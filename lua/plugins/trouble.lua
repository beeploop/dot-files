return {
    "folke/trouble.nvim",
    opts = {
        icons = false,
    },
   config = function()
        vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
    end
}
