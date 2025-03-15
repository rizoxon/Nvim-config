require("rose-pine").setup({
	variant = "moon",
	dark_variant = "main",
	dim_inactive_windows = false,
	extend_background_behind_borders = false,

	enable = {
		terminal = false,
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
vim.cmd("colorscheme rose-pine")
-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#22232A" })

-- require('onedark').setup({
-- 	comment_style = "italic",
-- 	function_style = "italic",
-- 	dark_float = true
-- })
