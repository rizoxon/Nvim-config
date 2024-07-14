vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup({
  -- sort = {
  --   sorter = "case_sensitive",
  -- },
  view = {
    width = 35,
  },
  -- renderer = {
  --   group_empty = true,
  -- },
  -- filters = {
  --   dotfiles = false,
  -- },
})

vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>')
