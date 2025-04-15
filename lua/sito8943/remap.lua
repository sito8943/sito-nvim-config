vim.g.mapleader = " "
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Función para intercambiar dos líneas
local function swap_lines(n1, n2)
  local line1 = vim.fn.getline(n1)
  local line2 = vim.fn.getline(n2)
  vim.fn.setline(n1, line2)
  vim.fn.setline(n2, line1)
end

-- Mover línea actual hacia arriba
local function swap_up()
  local n = vim.fn.line('.')
  if n == 1 then return end
  swap_lines(n, n - 1)
  vim.cmd((n - 1) .. "G") -- Mover el cursor a la línea nueva
end

-- Mover línea actual hacia abajo
local function swap_down()
  local n = vim.fn.line('.')
  if n == vim.fn.line('$') then return end
  swap_lines(n, n + 1)
  vim.cmd((n + 1) .. "G")
end

-- Keymaps para mover líneas con Ctrl + Shift + ↑ / ↓
vim.keymap.set('n', '<C-S-Up>', swap_up, { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-Down>', swap_down, { noremap = true, silent = true })

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

