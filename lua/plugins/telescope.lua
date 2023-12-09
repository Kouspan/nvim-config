return {
	'nvim-telescope/telescope.nvim', branch = '0.1.x',
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
		wk.register({
			f = {
				name = "Telescope",
				r = { builtin.oldfiles, "Recent Files"},
				f = { builtin.find_files,"Find Files"},
				g = { builtin.live_grep, "Grep"},
				b = { builtin.buffers, "Buffers"},
				h = { builtin.help_tags, "Help"}
				},
			}, { prefix = "<leader>" })
	end
}
