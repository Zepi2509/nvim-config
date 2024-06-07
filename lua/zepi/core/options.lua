-- See `:help vim.opt`
--  For more options, you can see `:help option-list`

local opt = vim.opt

-- Make line numbers default
opt.number = true
opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = "a"

-- Don't show the mode, since it's already in status line
opt.showmode = false

-- Set tabs to be 4 spaces
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- disable line wrapping
opt.wrap = false

-- Enable break indent
opt.breakindent = true

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.termguicolors = true

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true

-- Show which line your cursor is on
opt.cursorline = false

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
opt.listchars = { tab = "┊ ", trail = "·", nbsp = "␣" }

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
opt.clipboard = "unnamedplus"

-- Save undo history
opt.undofile = true

-- Decrease update time
opt.updatetime = 250

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
opt.timeoutlen = 300

-- Set UTF-8
opt.encoding = "utf-8"

-- Preview substitutions live, as you type!
opt.inccommand = "split"

-- Set highlights on search
opt.hlsearch = true
