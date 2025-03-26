return {
	"folke/zen-mode.nvim",
	opts = {},
	config = function()
		require("zen-mode").setup({
			plugins = {
				options = {
					laststatus = 3,
				},
			},
		})
		vim.keymap.set("n", "<leader>zz", "<cmd>ZenMode<CR>")
	end,
}
