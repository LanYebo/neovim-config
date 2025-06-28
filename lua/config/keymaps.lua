-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ~/.config/nvim/lua/config/keymaps.lua

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- ===========================================================
-- basic shortcut key
-- ===========================================================

-- quit insert mode quickly
keymap("i", "jk", "<Esc>", opts)
keymap("i", "JK", "<Esc>", opts)

-- quick move
keymap({ "n", "v" }, "J", "5j", opts)
keymap({ "n", "v" }, "K", "5k", opts)

-- change some default key
keymap("n", "<leader>j", "J", opts)
keymap("n", "gh", "K", opts)

-- ===========================================================
-- file opreation
-- ===========================================================

keymap("n", "<leader>w", ":w<CR>", { desc = "save file" })
keymap("n", "<leader>q", ":q<CR>", { desc = "quit file" })
keymap("n", "<leader>x", ":x<CR>", { desc = "quit and save" })
keymap("n", "<leader>Q", ":qa!<CR>", { desc = "quit all" })

-- ===========================================================
-- window management
-- ===========================================================

-- travel through windows
keymap("n", "<C-h>", "<C-w>h", { desc = "move to the window left" })
keymap("n", "<C-j>", "<C-w>j", { desc = "move to the window below" })
keymap("n", "<C-k>", "<C-w>k", { desc = "move to the window up" })
keymap("n", "<C-l>", "<C-w>l", { desc = "move to the windows right" })

-- aujust the size of windows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Deown>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- ===========================================================
-- editing enhance
-- ===========================================================

-- cancel search helight
keymap("n", "<Esc>", ":nohlsearch<CR>", opts)

-- move selected lines on visual mode
-- keymap('v', '<C-A-j>', ":m '>+1<CR>gv=gv", {desc = 'move down selected line' })
-- keymap('v', '<C-A-k>', ":m '<-2<CR>gv=gv", {desc = 'move down selected line' })

-- change indent and keep select
keymap("n", "<", "<gv", { desc = "indent left and keep select" })
keymap("n", "<", "<gv", { desc = "indent right and keep select" })

-- better copy(don't overwirte default clipboard)
-- keymap('v', 'p', '"_dP', opts)

-- ===========================================================
-- better search and replacement
-- ===========================================================

-- search selected text
-- keymap('n', '//', 'y/<C-R>"<CR>', { dest = 'search selected text' })

-- replace current word globally
-- keymap('n', '<leader>s', ':s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>',
-- { desc = 'replace current word globally' })

-- ===========================================================
-- quick command
-- ===========================================================

-- enter command mode quickly
keymap("n", ";", ":", { desc = "enter command mode quickly" })

-- quick save and format
keymap("n", "<leader>fmt", function()
  vim.lsp.buf.format()
  vim.cmd("write")
end, { desc = "format save" })
