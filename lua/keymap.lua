local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- leader
vim.g.mapleader = " "

-- Normal Mode

-- terminal
keymap("n", "<leader>t", ":terminal<return>", opts)
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
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

-- diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
