-- Default Options
local opts = { noremap = true, silent = true }

-- Set Space as leader key
vim.keymap.set("", "<Space>", "<Nop>", opts)
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
vim.keymap.set("n", "<leader><tab><tab>", ":tabnew<CR>", opts)
vim.keymap.set("n", "<leader><tab>q", ":tabclose<CR>", opts)
-- Tab: Movement
vim.keymap.set("n", "<leader><tab>h", ":tabprevious<CR>", opts)
vim.keymap.set("n", "<leader><tab>l", ":tabnext<CR>", opts)

-- Window
vim.keymap.set("n", "<leader>w", "<C-w>", opts)
-- Window: Movement
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
-- Window: Resize
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)
-- Window Dir Explorer
--vim.keymap.set("n", "<Leader>e", ":Lex<CR> :vertical resize 30<CR>", opts)

-- Buffer
-- Buffer: Movement
vim.keymap.set("n", "<S-h>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-l>", ":bprevious<CR>", opts)

-- Format
vim.keymap.set("n", "<leader>f", ":=vim.lsp.buf.format()<CR>", opts)

-- File Explorer
vim.keymap.set("n", "<leader>e", ":Ex<CR>", opts)

-- LSP Definitions
vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "<leader>gD", function() vim.lsp.buf.declaration() end, opts)
vim.keymap.set("n", "<leader>gt", function() vim.lsp.buf.type_definition() end, opts)

-- Insert Mode --
-- Escape Insert Mode
vim.keymap.set("i", "jk", "<esc>", opts)

-- Visual Mode --
-- Delete Things
vim.keymap.set("v", "<leader>d", '"_d', opts) -- Send delete to null register
vim.keymap.set("v", "x", '"_x', opts)         -- Send single char delete to null register

-- Terminal Mode --
vim.keymap.set("t", "<esc><esc>", "<C-\\><C-n>", opts)
