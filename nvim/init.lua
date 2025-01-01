vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.scrolloff = 999

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
