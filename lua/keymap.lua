local utils = require('utils')

-- Git specific commands
vim.keymap.set('n', '<Leader>gg', utils.telescopeGitGrep)
vim.keymap.set('n', '<Leader>gf', utils.telescopeFileSearch)

-- Language specific commands
vim.keymap.set('n', '<Leader>lt', vim.lsp.buf.type_definition)
vim.keymap.set('n', '<Leader>lf', vim.lsp.buf.formatting)

-- Error handling
vim.keymap.set('n', '<Leader>ee', '<cmd>TroubleToggle<cr>')
vim.keymap.set('n', '<Leader>ec', '<cmd>TroubleClose<cr>')
vim.keymap.set('n', '<Leader>er', '<cmd>TroubleRefresh<cr>')
vim.keymap.set('n', '<Leader>eo', '<cmd>Trouble<cr>')

-- File tree
vim.keymap.set('n', '<Leader>ff', '<cmd>NvimTreeToggle<cr>')

-- Move between splits
vim.keymap.set({ 'n', 'i' }, '<C-h>', '<C-w><C-h>')
vim.keymap.set({ 'n', 'i' }, '<C-l>', '<C-w><C-l>')
vim.keymap.set({ 'n', 'i' }, '<C-j>', '<C-w><C-j>')
vim.keymap.set({ 'n', 'i' }, '<C-k>', '<C-w><C-k>')

-- Terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
