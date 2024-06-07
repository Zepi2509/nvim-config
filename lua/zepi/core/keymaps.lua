--  See `:help vim.keymap.set()`

-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- Diagnostic keymaps
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- TIP: Disable arrow keys in normal mode
keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Disable middle click paste
keymap.set("n", "<MiddleMouse>", "<Nop>")
keymap.set("v", "<MiddleMouse>", "<Nop>")
keymap.set("i", "<MiddleMouse>", "<Nop>")

-- Exit insert mode with jk
keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })
keymap.set("c", "jj", "<Esc>", { desc = "Exit insert mode with jj" })

-- Remove searchhightlights with escape
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove searchhightlights with <Esc>" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<leader>qn", "<cmd>cnext<CR>", { desc = "[Q]uickfix: [n]ext" })
keymap.set("n", "<leader>qp", "<cmd>cprev<CR>", { desc = "[Q]uickfix: [p]rev" })
