require("ibl").setup {
	indent = {
		char = "│",
	},
	scope = {
		enabled = true,
	},
	whitespace = {
		remove_blankline_trail = false,
	},
	exclude = {
		filetypes = { "help", "dashboard", "packer", "NvimTree", "Trouble", "TelescopePrompt", "Float" },
	},
}
