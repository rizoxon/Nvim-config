require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript"},

	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true,
		disable = { "diff" },
	},
}
