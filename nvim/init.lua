-- config to fix expo
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.backupcopy = "yes"
-- general config
vim.g.filetype_v = "v"
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 4
vim.o.visualbell = true
vim.o.encoding = 'utf-8'
vim.o.colorcolumn = "100"
-- COMMEND 1st FOR TABS
-- vim.o.expandtab = false
vim.o.expandtab = true

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.number = true
vim.o.termguicolors = true
vim.g.mapleader = ' '
vim.o.smartindent = true
vim.o.hidden = true
vim.o.showmode = false
vim.o.signcolumn = "yes"
vim.cmd([[
  nnoremap Y y$
  nnoremap j gj
  nnoremap k gk
  nnoremap <leader>l <C-w>l
  nnoremap <leader>h <C-w>h
  nnoremap <leader>j <C-w>j
  nnoremap <leader>k <C-w>k
]])

-- Install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
--  Load plugins
require("lazy").setup("plugins", {
  change_detection = { notify = false },
})

-- Statusline
require("statusline")
