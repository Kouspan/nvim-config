local opt = vim.opt

opt.clipboard = "unnamedplus" -- sync with system clipboard
opt.confirm = true -- confirm to save changes before exiting modiefied buffer

-- Editor Style
opt.relativenumber = true
opt.wrap = false 
opt.cursorline = true
opt.number = true -- print number line
opt.laststatus = 3 -- behavior of status-line
opt.pumblend = 15 -- popup menu transparency
opt.pumheight = 10 -- maximum number of entries in a popup
opt.signcolumn = "auto:3"
opt.showmode = false
opt.termguicolors = true -- true color support

--Editing
opt.shiftround = true -- use multiple of shiftwidth
opt.shiftwidth = 4 -- size of an indent
opt.tabstop = 4 -- number of spaces tabs count for
opt.smartindent = true

-- Behavior
opt.sessionoptions = { "winsize", "buffers", "curdir", "tabpages", "help", "globals", "skiprtp", "folds"}
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.wildmode = "longest:full,full"

-- Folding
opt.fillchars = {
	foldopen = "",
	foldclose = "",
	-- fold = "⸱",
	fold = " ",
	foldsep = " ",
	diff = "╱",
	eob = " "
}
opt.foldmethod = "indent"
opt.foldlevel = 99
opt.foldcolumn = "0"

--Searching
opt.ignorecase = true
opt.smartcase = true

--Window
opt.splitbelow = true
opt.splitright = true
opt.splitkeep = "screen"
opt.winminwidth = 10

-- Scrolling
opt.sidescroll = 1 -- the minimal number of columns to scroll horizontally 
opt.sidescrolloff = 10 -- The minimal number of screen columns to keep sideways
opt.scrolloff = 6 -- the minimal number of rows to keep visible when scrolling
opt.completeopt = "menu,menuone,noselect"

