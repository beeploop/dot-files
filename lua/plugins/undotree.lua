return {
	"mbbill/undotree",
	config = function()
		vim.keymap.set("n", "<leader>uu", function()
			vim.cmd.UndotreeToggle()
			vim.cmd.UndotreeFocus()
		end, { desc = "Undotree: Toggle and focus" })
	end,
}
