require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'auto',
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {
		{
			'filename',
			path = 1,
		}
		},
		lualine_c = {
		{
			'branch',
			icon = "",
			color = { fg = '#8FBCBB', gui = 'bold' },
		}
		},
		lualine_x = {'filetype', 'diagnostics'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	}
}
