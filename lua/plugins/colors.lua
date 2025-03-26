return {
	{
		"tiagovla/tokyodark.nvim",
		opts = {
			transparent_background = true,
		},
		config = function(_, opts)
			require("tokyodark").setup(opts) -- calling setup is optional
			vim.cmd([[colorscheme tokyodark]])
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup()
			-- vim.cmd([[colorscheme gruvbox]])
		end,
	},
}
