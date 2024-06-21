local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- leader
vim.g.mapleader = " "

-- Normal Mode

-- terminal
keymap("n", "<leader>t", ":terminal<return>", opts, "Opens terminal")
keymap("t", "<Esc><Esc>", "exit<return>", opts)

-- tab stuffs
keymap("n", "te", ":tabedit", opts)
keymap("n", "gh", "gT", opts)
keymap("n", "gl", "gt", opts)

-- Insert Mode

-- emacs-like insert mode keybinds
keymap("i", "<C-E>", "<ESC>A", opts)
keymap("i", "<C-A>", "<ESC>I", opts)

-- exit insert mode easier
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)


--partially copied from nvim-lua/kickstart.nvim

-- clear highlights with <Esc> in normal mode
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", opts, "Clear Highlights")

-- LSP keymaps
keymap('n', 'gD', vim.lsp.buf.declaration, opts, "Go to declaration")
keymap('n', 'gd', vim.lsp.buf.definition, opts, "Go to definition")
keymap('n', 'gi', vim.lsp.buf.implementation, opts, "Go to implementation")

-- diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev, opts, "Go to previous diagnostic")
keymap('n', ']d', vim.diagnostic.goto_next, opts, "Go to next diagnostic")
keymap('n', '<leader>e', vim.diagnostic.open_float, opts, "Open diagnostics in a float window")
keymap('n', '<leader>q', vim.diagnostic.setloclist, opts, "Add diagnostics to location list")
