local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fm', builtin.marks, { desc = "Find marks" })

vim.keymap.set('n', '<leader>r', builtin.registers, {})

vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = "Git status" })
