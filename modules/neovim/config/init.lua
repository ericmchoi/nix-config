vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', { desc = '[Y]ank to clipboard' })

require('config.options')
require('config.lazy')
