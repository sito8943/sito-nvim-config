vim.g.mapleader = " "
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- move current line down
vim.keymap.set('n', '<A-Down>', "ddp", { noremap = true, silent = true })
-- move current line up
vim.keymap.set('n', '<A-Up>', "ddkP", { noremap = true, silent = true })

-- Split vertical y mover foco a la derecha
vim.keymap.set('n', '<C-\\>', ':vsp<CR><C-w>l', { noremap = true, silent = true })
vim.keymap.set('i', '<C-\\>', '<Esc>:vsp<CR><C-w>li', { noremap = true, silent = true })

-- Tab / Shift+Tab en modo normal (indent / unindent)
vim.keymap.set('n', '<Tab>', '>>', { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', '<<', { noremap = true, silent = true })

-- Shift+Tab en modo insert (equivalente a <C-d>)
vim.keymap.set('i', '<S-Tab>', '<C-d>', { noremap = true, silent = true })

-- Enter (<CR>) goes from normal mode mode, makes a jump line and enters in append mode 
vim.keymap.set('n', '<CR>', 'o', { noremap = true, silent = true })
-- Shift Enter goes from normal mode, makes a jump to above line and enters in append mode:
vim.keymap.set('n', '<S-CR>', 'O', { noremap = true, silent = true })

