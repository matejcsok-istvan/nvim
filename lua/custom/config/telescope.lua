local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-c>p', builtin.git_files, {})
vim.keymap.set('n', '<C-c>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-x>b', builtin.buffers, {})
