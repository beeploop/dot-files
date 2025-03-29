return {
	"folke/zen-mode.nvim",
	dependencies = {
		"folke/twilight.nvim", -- Optional: for code focusing
	},
	opts = {
		window = {
			width = 90,
			options = {},
		},
		plugins = {
			options = {},
			twilight = { enabled = true },
			tmux = { enabled = false },
		},
	},
	config = function(_, opts)
		local zen_mode = require("zen-mode")
		zen_mode.setup(opts)

		-- Set up the keymap to toggle Zen Mode
		vim.keymap.set("n", "<leader>zz", zen_mode.toggle, { desc = "Toggle Zen Mode" })
	end,
}
