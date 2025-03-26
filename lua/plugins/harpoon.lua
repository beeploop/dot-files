return {
	"ThePrimeagen/harpoon",
	enabled = true,
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({})

		-- Basic telescope configuration
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end

		local keymap = function(keys, func, desc, mode)
			mode = mode or "n"
			vim.keymap.set(mode, keys, func, { desc = "Harpoon: " .. desc })
		end

		-- List files
		keymap("<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, "Open harpoon window")

		-- List files with telescope
		keymap("<C-t>", function()
			toggle_telescope(harpoon:list())
		end, "Open harpoon window with telescope")

		-- Add harpoon file
		keymap("<leader>a", function()
			harpoon:list():add()
		end, "Add harpoon file")

		-- Jumping around
		keymap("<C-i>", function()
			harpoon:list():select(1)
		end, "Jump to harpoon file 1")

		keymap("<C-o>", function()
			harpoon:list():select(2)
		end, "Jump to harpoon file 2")

		keymap("<C-p>", function()
			harpoon:list():select(3)
		end, "Jump to harpoon file 3")

		keymap("<C-l>", function()
			harpoon:list():select(4)
		end, "Jump to harpoon file 4")
	end,
}
