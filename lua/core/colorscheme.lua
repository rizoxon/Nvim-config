-- require('onedark').setup  {
--	 style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--	 transparent = true,  -- Show/hide background
--	 term_colors = true, -- Change terminal color as per the selected theme style
--	 ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
--	 cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--
--	 -- toggle theme style ---
--	 toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
--	 toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
--
--	 -- Change code style ---
--	 -- Options are italic, bold, underline, none
--	 -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
--	 code_style = {
--	  comments = 'italic',
--	  keywords = 'none',
--	  functions = 'none',
--	  strings = 'none',
--	  variables = 'none'
--	 },
--
--	 -- Lualine options --
--	 lualine = {
--	  transparent = true, -- lualine center bar transparency
--	 },
--
--	 -- Custom Highlights --
--	 colors = {}, -- Override default colors
--	 highlights = {}, -- Override highlight groups
--
--	 -- Plugins Config --
--	 diagnostics = {
--	  darker = true, -- darker colors for diagnostic
--	  undercurl = true,   -- use undercurl instead of underline for diagnostics
--	  background = false,	 -- use background color for virtual text
--	 },
-- }
-- -- Lua
-- require('onedark').load()

require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	background = { -- :h background
		light = "latte",
		dark = "mocha",
	},
	transparent_background = true, -- disables setting the background color.
	show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
	term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
	dim_inactive = {
		enabled = false, -- dims the background color of inactive window
		shade = "dark",
		percentage = 0.15, -- percentage of the shade to apply to the inactive window
	},
	no_italic = false, -- Force no italic
	no_bold = true, -- Force no bold
	no_underline = false, -- Force no underline
	styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
		comments = { "italic" }, -- Change the style of comments
		conditionals = { "italic" },
		loops = {"italic"},
		functions = {"italic"},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {"italic"},
		properties = {},
		types = {},
		operators = {},
		-- miscs = {}, -- Uncomment to turn off hard-coded styles
	},
	color_overrides = {},
	custom_highlights = {},
	default_integrations = true,
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		treesitter = true,
		notify = false,
		mini = {
			enabled = true,
			indentscope_color = "",
		},
	},
})
-- vim.cmd.colorscheme "catppuccin"

require("rose-pine").setup({
	variant = "moon",
	dark_variant = "main",
	dim_inactive_windows = false,
	extend_background_behind_borders = false,

	enable = {
		terminal = true,
		legacy_highlights = true,
		migrations = true,
	},

	styles = {
		bold = false,
		italic = true,
		transparency = true,
	},
})

-- Load rose-pine theme
-- vim.cmd("colorscheme rose-pine")
-- Default options

require('github-theme').setup({
	options = {
		-- Compiled file's destination location
		compile_path = vim.fn.stdpath('cache') .. '/github-theme',
		compile_file_suffix = '_compiled', -- Compiled file suffix
		hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
		hide_nc_statusline = true, -- Override the underline style for non-active statuslines
		transparent = false,	   -- Disable setting bg (make neovim's background transparent)
		terminal_colors = true,    -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
		dim_inactive = false,	   -- Non focused panes set to alternative background
		module_default = true,	   -- Default enable value for modules
		styles = {				   -- Style to be applied to different syntax groups
			comments = 'italic',	   -- Value is any valid attr-list value `:help attr-list`
			functions = 'NONE',
			keywords = 'NONE',
			variables = 'NONE',
			conditionals = 'NONE',
			constants = 'NONE',
			numbers = 'NONE',
			operators = 'NONE',
			strings = 'NONE',
			types = 'bold',
		},
		inverse = {				   -- Inverse highlight for different types
			match_paren = false,
			visual = false,
			search = false,
		},
		darken = {				   -- Darken floating windows and sidebar-like windows
			floats = true,
			sidebars = {
				enable = true,
				list = {},			   -- Apply dark background to specific windows
			},
		},
		modules = {				   -- List of various plugins and additional options
		-- ...
		},
	},
	palettes = {},
	specs = {},
	groups = {},
})

-- setup must be called before loading
vim.cmd('colorscheme github_dark_default')
