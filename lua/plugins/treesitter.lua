return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	keys = {{"<leader>lt", desc="Load Treesitter"}},
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects"
	},
	config = function()
		local install = require("nvim-treesitter.install")

		install.prefer_git = false
		install.compilers = { "cl" }

		local configs = require("nvim-treesitter.configs")
		configs.setup({
			sync_isntall = false,
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<leader>s",
					node_incremental = "<leader>s",
					scope_incremental = false,
					node_decremental = "<bs>",
				}
			},
			ensure_installed = {
				"c",
				"c_sharp",
				"cmake",
				"cpp",
				"lua",
				"python",
				"vim",
				"vimdoc",
				"query"
			}

		})
	end
}
