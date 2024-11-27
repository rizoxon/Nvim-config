local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {"lua_ls"},
	handlers = {
		lsp_zero.default_setup,
		lua_ls = function()
			require('lspconfig').lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = {'vim'}
						}
					}
				}
			})
		end,
	},
})

-- Custom restart function
local function restart_lsp()
	vim.lsp.stop_client(vim.lsp.get_active_clients())
	vim.cmd('edit')
end

vim.api.nvim_create_user_command('LspRestartCustom', restart_lsp, {})


local lspconfig = require('lspconfig')

lspconfig.eslint.setup({
    root_dir = lspconfig.util.root_pattern('.git', 'package.json'),
    -- Add other configuration options here
})

require('lspconfig').ast_grep.setup({
    root_dir = lspconfig.util.root_pattern('sgconfig.yml'),
    single_file_support = false
})


