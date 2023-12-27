vim.keymap.set('i', '<C-J>', '<Nop>', {silent = true})
vim.keymap.set('n', '<Space>', '<Nop>', {silent = true})

vim.g.mapleader = ' '
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('n', '<C-S>', '<CMD>w<CR>')
--COPY,MOVE--
-- duplication
vim.keymap.set('n', '<C-D>', '<CMD>t .<CR>')
-- move line
vim.keymap.set('n', '<C-K>', '<CMD>mo -2<CR>')
vim.keymap.set('n', '<C-J>', '<CMD>mo +1<CR>')
-- move selection
vim.keymap.set('v', '<C-J>', ':mo \'>+1<CR>gv')
vim.keymap.set('v', '<C-K>', ':mo \'<-2<CR>gv')
-- insert new line in normal mode
vim.keymap.set('n', '<CR>', 'i<CR><Esc>')

--BUFFERS--
vim.keymap.set('n', ']b', '<CMD>bn<CR>')
vim.keymap.set('n', '[b', '<CMD>bp<CR>')
