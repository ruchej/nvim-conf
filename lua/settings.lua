local utils = require('utils')

local cmd = vim.cmd
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'
cmd 'colorscheme gruvbox'
-- vim.opt noswapfile = true


utils.opt('o', 'mouse', 'a')
utils.opt('o', 'clipboard', 'unnamedplus')
utils.opt('o', 'encoding', 'utf-8')

utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('w', 'scrolloff', 7)
utils.opt('w', 'cursorline', true)

utils.opt('b', 'tabstop', indent)
utils.opt('b', 'softtabstop', indent)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'expandtab', true)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'fileformat', 'unix')

utils.opt('o', 'splitright', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'incsearch', true)
utils.opt('o', 'diffopt', 'vertical')
utils.opt('o', 'foldmethod', 'indent')
utils.opt('o', 'foldlevelstart', 1)
-- utils.opt('o', 'noendofline', 1)

utils.opt('o', 'path', '**')
utils.opt('o', 'wildmenu', true)

utils.opt('o', 'langmap', "ёйцукенгшщзхъфывапролджэячсмитьбю;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.,ЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>")

