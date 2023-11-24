return{
	{
		"catppuccin/nvim",
		lazy = true,
		name = "catppuccin",
		priority = 1000,
	},
	{
		"navarasu/onedark.nvim",
		lazy=false,
		name="onedark",
		priority=1000,
		config = function()
			M = require("onedark")
			M.setup({style = "darker"})
			M.load()
		end
	}
}


