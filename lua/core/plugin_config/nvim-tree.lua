require("nvim-tree").setup({
	view = { adaptive_size = true, },
	renderer = {
		root_folder_label = false,
		indent_markers = { enable = true, },
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
			},
			glyphs = {
				default = "📄",
				symlink = "🔗",
				folder = {
					default = "",
					open = "",
					empty = "",
					empty_open = "",
				},
			}
		}
	},
	actions = {
		change_dir = {
			enable = false,
			restrict_above_cwd = true
		}
	}
})

-- Keybinding to toggle file tree
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>')

vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#353845" })
