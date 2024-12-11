require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = {
			normal = {
				a = { bg = 'none' },
				b = { bg = 'none' },
				c = { bg = 'none' },
			},
			insert = { a = { bg = 'none' }, },
			visual = { a = { bg = 'none' }, },
			replace = { a = { bg = 'none' }, },
			inactive = {
				a = { bg = 'none' },
				b = { bg = 'none' },
				c = { bg = 'none' },
			},
		},
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
	},
	sections = {
		lualine_a = { 'mode' },
		lualine_b = {
			{
				'branch',
				icon = "",
				color = { fg = '#9FBCBB' },
			}
		},
		lualine_c = {
			{
				'filename',
				path = 3,
			}
		},
		lualine_x = {'filetype'},
		lualine_y = {'location'},
		lualine_z = {}
	}
}
