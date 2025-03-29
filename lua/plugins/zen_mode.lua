return {
	"folke/zen-mode.nvim",
	opts = {
		window = {
			width = 90,
			options = {
				number = false,
				relativenumber = false,
				cursorline = false,
				cursorcolumn = false,
			},
		},
		plugins = {
			options = {
				enabled = true,
				shocmd = true,
				laststatus = 3,
			},
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
