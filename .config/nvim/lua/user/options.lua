-- Enable relative line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- Set tabs to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- vim.opt.spell = true
-- vim.opt.spelllang = "en_us"

-- Enable auto indenting and set it to spaces
vim.opt.smartindent = true
vim.opt.shiftwidth = 2

-- Enable smart indenting
vim.opt.breakindent = true

-- Disable text wrap
vim.opt.wrap = false
vim.opt.sidescroll = 1
vim.opt.showbreak = "↪"

-- Set leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enable ignorecase + smartcase for better searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable persistent undo history
vim.opt.undofile = true

-- Enable the sign column to prevent the screen from jumping
vim.opt.signcolumn = "yes"

-- Enable cursor line highlight
vim.opt.cursorline = true

-- Always keep 8 lines above/below cursor unless at start/end of file
vim.opt.scrolloff = 8

-- Place a column line
vim.opt.colorcolumn = "120"

vim.opt.guicursor = {
  "n-v-c:block",  -- Normal, visual, command-line: block cursor
  "i-ci-ve:ver25", -- Insert, command-line insert, visual-exclude: vertical bar cursor with 25% width
  "r-cr:hor20",   -- Replace, command-line replace: horizontal bar cursor with 20% height
  "o:hor50",      -- Operator-pending: horizontal bar cursor with 50% height
}

-- Give access to system clipboard
vim.opt.clipboard = "unnamed,unnamedplus"
