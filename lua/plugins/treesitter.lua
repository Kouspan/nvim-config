return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
	local configs = require("nvim-treesitter.configs")
	local install = require("nvim-treesitter.install")

	install.prefer_git = false
	install.compilers = {"cl"}

	configs.setup({
	    ensure_installed = {"c","c_sharp","cmake","cpp","lua","python", "vim", "vimdoc", "query"},
	    sync_isntall = false,
	    highlight = {enable = true},
	    indent = {enable = true},
	})
    end
}
