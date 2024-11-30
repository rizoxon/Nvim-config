-- -@diagnostic disable: undefined-global
vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })

vim.opt.colorcolumn = "100"

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.swapfile = false
vim.opt.list = true
vim.opt.clipboard = "unnamedplus"
vim.opt.guicursor = "n-v-i-c:block-Cursor"
vim.scriptencoding = "utf-9"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.listchars = {
	space = '·',
	tab = "│ "
}
vim.opt.list = true
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.backup = false
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.scrolloff = 20
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"

vim.opt.wrap = false
vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- tab and spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = false

vim.keymap.set("n", "<leader>cs", ":nohlsearch<CR>")
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
vim.keymap.set("n", "ss", ":split<Return>", opts)
vim.keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

-- Very useful remap
vim.keymap.set("v", "<leader>p", "\"_dP")

-- retabab
vim.keymap.set("n", "<leader>t", ":set noexpandtab | retab!<CR>")

vim.keymap.set("i", "<C-c>", "<Esc>")

