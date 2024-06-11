vim.cmd("let g:netrw_liststyle = 3")

-- Disable mouse mode
vim.o.mouse = ''

vim.o.wrap = false
vim.o.guicursor = ""
vim.o.termguicolors = true

-- Make line numbers default
vim.wo.number = true
vim.o.relativenumber = true

-- tabs and indentation
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.nvim/undodir"

-- Case insensitive searching UNLESS /C or capital in search
vim.o.smartcase = true
vim.o.ignorecase = true
-- Set highlight on search
vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.cursorline = false

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

vim.opt.clipboard = 'unnamedplus'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Concealer for Neorg
vim.o.conceallevel=2
