return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	opts = {
		defaults = {
			-- Default configuration for telescope goes here:
			-- config_key = value,
			mappings = {
				i = {
					-- map actions.which_key to <C-h> (default: <C-/>)
					-- actions.which_key shows the mappings for your picker,
					-- e.g. git_{create, delete, ...}_branch for the git_branches picker
					["<C-k>"] = "move_selection_previous",
					["<C-j>"] = "move_selection_next",
					["<C-h>"] = "which_key"
				}
			}
		},
		pickers = {
			-- Default configuration for builtin pickers goes here:
			-- picker_name = {
			--   picker_config_key = value,
			--   ...
			-- }
			-- Now the picker_config_key will be applied every time you call this
			-- builtin picker
		},
		extensions = {
			-- Your extension configuration goes here:
			-- extension_name = {
			--   extension_config_key = value,
			-- }
			-- please take a look at the readme of the extension you want to configure
		}
	},
	config = function()
		local wk = require("which-key")
		local builtin = require('telescope.builtin')
		local map = vim.keymap.set
		wk.register({ ["<leader>f"] = { name = "+Telescope" } })
		map('n', '<leader>fr', builtin.oldfiles, { desc = 'Recent Files' })
		map('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })
		map('n', '<leader>fc', function () builtin.find_files({cwd = vim.fn.stdpath("config")}) end, { desc = "Config Files"})
		map('n', '<leader>fg', builtin.live_grep, { desc = 'Grep Files' })
		map('n', '<leader>fb', builtin.buffers, { desc = 'Buffers' })
		map('n', '<leader>fh', builtin.help_tags, { desc = 'Help'})
	end
}
