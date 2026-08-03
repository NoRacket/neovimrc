return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { 
		"nvim-lua/plenary.nvim",
		'nvim-telescope/telescope.nvim'
	},

	config = function()
		local harpoon = require("harpoon")
		local keymap = vim.keymap.set

		-- REQUIRED
		harpoon:setup({
			settings = {
				save_on_toggle = true,
			}
		})
		-- REQUIRED
		-- basic telescope configuration
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers").new({}, {
				prompt_title = "Harpoon",
				finder = require("telescope.finders").new_table({
					results = file_paths,
				}),
				previewer = conf.file_previewer({}),
				sorter = conf.generic_sorter({}),
			}):find()
		end

		keymap("n", "<M-p>", function() 
			toggle_telescope(harpoon:list()) 
		end, { desc = "Open harpoon window" })
		keymap("n", "<leader>a", function() harpoon:list():add() end)
		keymap("n", "<C-p>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
		keymap("n", "<C-1>", function() harpoon:list():select(1) end)
		keymap("n", "<C-2>", function() harpoon:list():select(2) end)
		keymap("n", "<C-3>", function() harpoon:list():select(3) end)
		keymap("n", "<C-4>", function() harpoon:list():select(4) end)
		keymap("n", "<C-5>", function() harpoon:list():select(5) end)
	end
}
