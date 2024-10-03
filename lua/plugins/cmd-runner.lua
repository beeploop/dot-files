return {
	dir = "~/repos/lua/neovim/cmd-runner",
	config = function()
		require("cmd-runner").setup()

		local builtin = require("cmd-runner")
		vim.keymap.set("n", "<leader>co", builtin.cmd_open, { desc = "[C]ommand [O]pen" })
		vim.keymap.set("n", "<leader>cc", builtin.cmd_close, { desc = "[C]omman [C]lose" })
	end,
}
