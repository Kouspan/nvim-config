return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
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
