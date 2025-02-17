-- Default Options
local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Set Space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--  normal_mode = "n"
--  insert_mode = "i"
--  visual_mode = "v"
--  visual_block_mode = "x"
--  term_mode = "t"
--  command_mode = "c"

-- Normal Mode --
-- Tab
keymap("n", "<leader><tab><tab>", ":tabnew<CR>", opts)
-- Tab: Movement
keymap("n", "<leader><tab>q", ":tabclose<CR>", opts)
keymap("n", "<leader><tab>h", ":tabprevious<CR>", opts)
keymap("n", "<leader><tab>l", ":tabnext<CR>", opts)

-- Window
keymap("n", "<leader>w", "<C-w>", opts)
-- Window: Movment
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- Window: Resize
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
-- Window Dir Explorer
--keymap("n", "<Leader>e", ":Lex<CR> :vertical resize 30<CR>", opts)

-- Buffer
-- Buffer: Movement
keymap("n", "<S-h>", ":bnext<CR>", opts)
keymap("n", "<S-l>", ":bprevious<CR>", opts)

-- Format
keymap("n", "<leader>f", ":=vim.lsp.buf.format()<CR>", opts)

-- File Explorer
keymap("n", "<leader>e", ":Ex<CR>", opts)

-- Insert Mode --
-- Escape Insert Mode
keymap("i", "jk", "<esc>", opts)

-- Visual Mode --
-- Delete Things
keymap("v", "<leader>d", '"_d', opts) -- Send delete to null register
keymap("v", "x", '"_x', opts)         -- Send single char delete to null register
