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
vim.opt.scrolloff = 10
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.wrap = false
vim.opt.backspace = "indent,eol,start"
vim.opt.showcmd = true
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.colorcolumn = "0"
vim.o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr-o:hor20"

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

-- Vertical jump
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "<C-b>", "<C-f>zz")

-- Ensure proper file type encoding
vim.opt.fileencodings = { "utf-8", "latin1" }


-- Flash
vim.keymap.set({"n", "x", "o"}, "<C-s>", function() require("flash").jump() end, { desc = "Flash Search" })
vim.keymap.set({"n", "x", "o"}, "?", function() require("flash").treesitter() end, { desc = "Flash treesitter" })


-- Norm mode
vim.keymap.set("v", "<leader>n", ":norm ", { noremap = true })

-- Zen
vim.keymap.set("n", "<leader>z", function() require("zen-mode").toggle() end)
