require("rose-pine").setup({
	variant = "moon",
	dark_variant = "main",
	dim_inactive_windows = false,
	extend_background_behind_borders = false,

	enable = {
		terminal = false,
		migrations = true,
	},

	styles = {
		bold = false,
		italic = true,
		transparency = true,
	},
})

-- Load rose-pine theme
vim.cmd("colorscheme rose-pine")
vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#181c1e' })

-- Highlight settings
vim.cmd('highlight EndOfBuffer guifg=#15181a guibg=bg')
vim.cmd([[highlight Whitespace guifg=#15181a guibg=NONE]])
vim.cmd([[highlight Tab guifg=#ffffff guibg=NONE]])
vim.cmd([[hi Folded gui=italic]])
vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#333333', bg = 'NONE', bold = false })
