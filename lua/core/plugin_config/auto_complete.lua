local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),

	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},

	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	}, {
		{ name = 'buffer' },
	}),

	window = {
		completion = {
			border = 'rounded',  -- Rounded border for completion popup
			winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:CursorLine,Search:Search',  -- Optional: Customize highlight groups
		},
		documentation = {
			border = 'rounded',  -- Rounded border for documentation popup
			winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:CursorLine,Search:Search',  -- Optional: Customize highlight groups
		},
	},
})
