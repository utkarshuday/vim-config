-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- Add line numbers and relative line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Indent
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true

-- Enable highlights and incremental highlights
vim.o.hlsearch = true
vim.o.incsearch = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Save undo history
vim.o.undofile = true

-- Keep signcolumn on by default
vim.o.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 50

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 500

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Substitutions live, as you type
vim.o.inccommand = "nosplit"

-- Show which line cursor is on
-- vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor
vim.o.scrolloff = 10

-- If performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.o.confirm = true

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Remove end of buffer tilde
vim.opt.fillchars = { eob = " " }
vim.opt.wrap = false

vim.o.winborder = "single"
