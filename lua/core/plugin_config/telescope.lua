
require('telescope').setup({
	defaults = {
		layout_strategy = "horizontal", -- Change to 'vertical', 'center', or 'cursor'
		layout_config = {
			width = 0.8,
			height = 0.9,
			prompt_position = "top",
			horizontal = { preview_width = 0.6, },
			vertical = { preview_height = 0.4, },
		},

		vimgrep_arguments = {
			'rg',
			'--hidden',
			'--no-heading',
			'--with-filename',
			'--line-number',
			'--column',
			'--case-sensitive'
		}
	},
})

local themes = require('telescope.themes')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader><leader>', function()
	builtin.find_files(themes.get_dropdown({
		width = 0.5,
		previewer = false,
	}))
end, {})

vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = "Git status" })
vim.keymap.set('n', '<leader>f', builtin.current_buffer_fuzzy_find, {})
