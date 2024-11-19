vim.cmd("let g:netrw_liststyle = 3")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.mouse = ""
vim.opt.guicursor = ""

vim.wo.number = true
vim.o.relativenumber = true

-- use 2 spaces for tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.wrap = false

-- disable backup and swap files
vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.o.hlsearch = true
vim.o.breakindent = true

vim.o.undofile = true

vim.o.smartcase = true
vim.o.ignorecase = true

vim.o.conceallevel = 2
vim.opt.clipboard = "unnamedplus"
vim.o.completeopt = "menuone,noselect"

-- for easy mouse resizing, just incase
vim.opt.mouse = "a"

-- gets rid of line with white spaces
vim.g.editorconfig = true

-- vim.wo.foldmethod = "expr"
-- vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
