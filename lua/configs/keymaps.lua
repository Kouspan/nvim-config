vim.keymap.set('n', '<Space>', '<Nop>', {silent = true})

vim.g.mapleader = ' '
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')

--COPY,MOVE--
vim.keymap.set('n', '<C-D>', '<CMD>t .<CR>')
vim.keymap.set('n', '<C-K>', '<CMD>mo -2<CR>')
vim.keymap.set('n', '<C-J>', '<CMD>mo +1<CR>')
