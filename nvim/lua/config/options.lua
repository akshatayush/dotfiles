-- Change leader to <Space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Global option used in plugin specs
vim.g.have_nerd_font = true

-- Editor related options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.breakindent = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Block cursor in all modes
vim.opt.guicursor = "n-v-i-c:block"

-- Keeps cursor vertically centered
vim.opt.scrolloff = 999

-- Use global OS clipboard
vim.opt.clipboard = "unnamedplus"

-- Ignore case when searching 
-- Except if one or more capital letters is present
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update timing
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
