--global variables
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0


--options
local opt = vim.opt

--opt.clipboard = "unnamedplus" -- sync with system clipboard
opt.confirm = true -- confirm to save changes before exiting modiefied buffer

--Editor Style--
opt.wrap = false
opt.cursorline = true
opt.relativenumber = true
opt.number = true -- print number line
opt.pumblend = 15 -- popup menu transparency
opt.pumheight = 10 -- maximum number of entries in a popup
opt.signcolumn = "yes"
opt.showmode = false
opt.termguicolors = true -- true color support

--Editing--
opt.shiftround = true -- use multiple of shiftwidth
opt.shiftwidth = 2 -- size of an indent
opt.tabstop = 2 -- number of spaces tabs count for
opt.expandtab = true
opt.smartindent = true
--Behavior--
opt.sessionoptions = { "winsize", "buffers", "curdir", "tabpages", "help", "globals", "skiprtp", "folds"}
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.wildmode = "longest:full,full"

--Folding--
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

--Searching--
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true
--autocommands for search highlighting
local search_id = vim.api.nvim_create_augroup("my-search-highlights",{})
vim.api.nvim_create_autocmd({"CmdlineEnter"},{
  pattern = {"/","\\?"},
  group = search_id,
  desc = "highlight search only in CMD mode",
  command = ":set hlsearch"
})
vim.api.nvim_create_autocmd({"CmdlineLeave"},{
  pattern = {"/","\\?"},
  group = search_id,
  desc = "highlight search only in CMD mode",
  command = ":set nohlsearch"
})

--Window--
opt.splitbelow = true
opt.splitright = true
opt.splitkeep = "screen"
opt.winminwidth = 10

--Scrolling--
opt.sidescroll = 1 -- the minimal number of columns to scroll horizontally 
opt.sidescrolloff = 10 -- The minimal number of screen columns to keep sideways
opt.scrolloff = 6 -- the minimal number of rows to keep visible when scrolling
opt.completeopt = "menu,menuone,noselect"

