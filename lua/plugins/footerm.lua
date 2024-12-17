return {
	"beeploop/footerm.nvim",
	config = function()
		local builtin = require("footerm")

		vim.keymap.set("n", "<leader>co", builtin.cmd_open, {})
		vim.keymap.set("n", "<leader>cc", builtin.cmd_close, {})
	end,
}
