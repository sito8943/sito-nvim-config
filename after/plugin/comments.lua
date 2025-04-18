local api = require('Comment.api')

-- Normal mode: Alt+a para comentar la línea actual
vim.keymap.set('n', '<A-a>', api.toggle.linewise.current, { noremap = true, silent = false })

