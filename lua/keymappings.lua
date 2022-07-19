local utils = require('utils')

utils.map('n', ',<space>', '<cmd>noh<CR>')      -- Clear highlights
utils.map('i', 'jk', '<Esc>')                   -- jk to escape
utils.map('n', '<space><space>', 'za')          -- Свернуть/развернуть складку

-- Переключение содержимого буфера
utils.map('n', 'gn', '<cmd>bn<CR>')             -- Следующее окно
utils.map('n', 'gp', '<cmd>bp<CR>')             -- Предыдущее окно
utils.map('n', 'gw', '<cmd>Bclose<CR>')         -- Закрыть окно

utils.map('n', '<C-n>', '<cmd>Ranger<CR>')      -- Вызвать файловый менеджер Ranger
utils.map('n', '<leader>s', '<cmd>call gitblame#echo()<CR>')

-- Настройки для модуля dap, отладчика python
utils.map('n', '<leader>b', '<cmd>lua require"dap".toggle_breakpoint()<CR>')
utils.map('n', '<f9>', '<cmd>lua require"dap".continue()<CR>')
utils.map('n', '<f8>', '<cmd>lua require"dap".step_over()<CR>')
utils.map('n', '<f7>', '<cmd>lua require"dap".step_into()<CR>')
utils.map('n', '<M-f8>', '<cmd>lua require"dap".repl.open()<CR>')
utils.map('n', '<leader>di', '<cmd>lua require"dap.ui.variables".hover()<CR>')
utils.map('v', '<leader>di', '<cmd>lua require"dap.ui.variables".visual_hover()<CR>')
utils.map('n', '<leader>d?', '<cmd>lua require"dap.ui.variables".scope()<CR>')
