local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {"lua_ls"},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
	},
})

require('lspconfig').lua_ls.setup({})
require('lspconfig').clangd.setup({})
