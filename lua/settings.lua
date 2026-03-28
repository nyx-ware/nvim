vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "no"

vim.o.clipboard = "unnamedplus"

vim.diagnostic.config({
    virtual_text = true
})

vim.opt.fillchars = { eob = " " }

vim.cmd("autocmd BufNewFile,BufRead * setlocal formatoptions-=cro")
vim.cmd("set whichwrap+=<,>,[,]")
