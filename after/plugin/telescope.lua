local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', function()
  local is_git_repo = vim.fn.system('git rev-parse --is-inside-work-tree'):find('true') ~= nil
  if is_git_repo then
    builtin.git_files()
  else
    builtin.find_files()
  end
end, { noremap = true, silent = true })

--vim.keymap.set('n', '<C-p>', builtin.find_files, {})
--vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pf', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
