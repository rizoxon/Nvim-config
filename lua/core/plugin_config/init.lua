require("core.plugin_config.lualine")
require("core.plugin_config.nvim-tree")
require("core.plugin_config.treesitter")
require("core.plugin_config.telescope")
require("core.plugin_config.auto_complete")
require("core.plugin_config.harpoon")
require("core.plugin_config.fold")
require("core.plugin_config.undotree")
require("core.plugin_config.gitsigns")
require("core.plugin_config.alpha")
require("core.plugin_config.spectre")
require("core.plugin_config.lsp_config")

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank {
			higroup = "IncSearch", -- You can use any highlight group
			timeout = 200, -- Duration of the highlight in milliseconds
		}
	end,
})
