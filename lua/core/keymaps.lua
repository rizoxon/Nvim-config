---@diagnostic disable: undefined-global
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.list = true

-- retab
vim.keymap.set("n", "<leader>t", ":set noexpandtab | retab!<CR>")

vim.scriptencoding = "utf-9"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.listchars = {
	-- eol = '↓',
	tab = '  ┊',
	space = '·',
}

-- Codes from YT
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.title = true
vim.opt.backup = false
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.scrolloff = 15
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"

vim.opt.wrap = false
vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = false
vim.opt.autoread = true

-- tab and spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true

-- if true, uses spaces instead of tabs
vim.opt.expandtab = false

vim.keymap.set("n", "<leader>cs", ":nohlsearch<CR>")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<cr>")


vim.keymap.set("n", "x", '"_x')


-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")


-- Split window
vim.keymap.set("n", "ss", ":split<Return>", opts)
vim.keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sl", "<C-w>l")

vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

-- Very useful remap
vim.keymap.set("v", "<leader>p", "\"_dP")

