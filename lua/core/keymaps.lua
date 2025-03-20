-- Disable undefined-global diagnostics
-- -@diagnostic disable: undefined-global

-- Diagnostic sign definitions
local define_sign = vim.fn.sign_define
define_sign('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
define_sign('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
define_sign('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
define_sign('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })

-- Global options
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Editor settings
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
vim.opt.guicursor = "n:block-blinkwait1000-blinkon500-blinkoff500"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.list = true
vim.opt.listchars = { space = '·', tab = " " }
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.backup = false
vim.opt.cmdheight = 0
vim.opt.laststatus = 2
vim.opt.scrolloff = 0
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.wrap = false
vim.opt.backspace = "indent,eol,start"
vim.opt.showcmd = true
vim.opt.autowrite = true
vim.opt.cursorline = false
vim.opt.autoread = true
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.colorcolumn = "0"

-- Highlight settings
vim.cmd('highlight EndOfBuffer guifg=#14151A guibg=bg')
vim.cmd([[highlight Whitespace guifg=#333333 guibg=NONE]])
vim.cmd([[highlight Tab guifg=#ffffff guibg=NONE]])
vim.cmd([[hi Folded gui=italic]])
vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#333333', bg = 'NONE', bold = false })

-- Key mappings
local keymap = vim.keymap.set
keymap('v', '<C-S-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
keymap('v', '<C-S-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
keymap("n", "<leader>cs", ":nohlsearch<CR>")
-- keymap("n", "<C-a>", "gg<S-v>G")
keymap("n", "ss", ":split<Return>", { noremap = true, silent = true })
keymap("n", "sv", ":vsplit<Return>", { noremap = true, silent = true })
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-l>", "<C-w>l")
keymap("n", "=", [[<cmd>vertical resize +5<CR>]])
keymap("n", "-", [[<cmd>vertical resize -5<CR>]])
keymap("n", "+", [[<cmd>horizontal resize +2<CR>]])
keymap("n", "_", [[<cmd>horizontal resize -2<CR>]])
keymap("v", "<leader>p", "\"_dP")
keymap("n", "<leader>t", ":set noexpandtab | retab!<CR>")
keymap("i", "<C-c>", "<Esc>")

-- Ensure proper file type encoding
vim.opt.fileencodings = { "utf-8", "latin1" }

--rename
vim.keymap.set('x', '<leader>s', 'y:%s/<C-r>"//gc<left><left><left>', {noremap = true})
