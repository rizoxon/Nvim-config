local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd [[packadd packer.nvim]]
	return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'mbbill/undotree'
	use 'nvim-lualine/lualine.nvim'
	use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons', }, }
	use 'nvim-treesitter/nvim-treesitter'
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.6', requires = { {'nvim-lua/plenary.nvim'} } }
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
	use { "catppuccin/nvim", as = "catppuccin" }
	use { "hrsh7th/nvim-cmp" }
	use { "L3MON4D3/LuaSnip" }
	use { "saadparwaiz1/cmp_luasnip" }
	use { "rafamadriz/friendly-snippets" }
	use {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	}
	use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }
	}
	use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup(
				{
					---Add a space b/w comment and the line
					padding = true,
					---Whether the cursor should stay at its position
					sticky = true,
					---Lines to be ignored while (un)comment
					ignore = nil,
					---LHS of toggle mappings in NORMAL mode
					toggler = {
						---Line-comment toggle keymap
						line = 'gcc',
						---Block-comment toggle keymap
						block = 'gbc',
					},
					---LHS of operator-pending mappings in NORMAL and VISUAL mode
					opleader = {
						---Line-comment keymap
						line = 'gc',
						---Block-comment keymap
						block = 'gb',
					},
					---LHS of extra mappings
					extra = {
						---Add comment on the line above
						above = 'gcO',
						---Add comment on the line below
						below = 'gco',
						---Add comment at the end of line
						eol = 'gcA',
					},
					---Enable keybindings
					---NOTE: If given `false` then the plugin won't create any mappings
					mappings = {
						---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
						basic = true,
						---Extra mapping; `gco`, `gcO`, `gcA`
						extra = true,
					},
					---Function to call before (un)comment
					pre_hook = nil,
					---Function to call after (un)comment
					post_hook = nil,
				}
			)
		end
	}
	use {
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("ibl").setup()
		end
	}
	use {
		"ellisonleao/gruvbox.nvim"
	}

	if packer_bootstrap then
		require('packer').sync()
	end
end)
