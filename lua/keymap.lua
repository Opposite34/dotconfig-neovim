local opts = { noremap = true, silent = true }

local opts_desc = function(description)
  return {
    noremap = true,
    silent = true,
    desc = description
  }
end

local keymap = vim.keymap.set

-- leader
vim.g.mapleader = " "

-- Normal Mode

-- terminal
keymap("n", "<leader>t", ":terminal<return>", opts_desc("Opens terminal"))
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
keymap("n", "<Esc>", vim.cmd("nohlsearch"), opts_desc("Clear Highlights"))

-- LSP keymaps
keymap("n", "K", vim.lsp.buf.hover, opts)
keymap("n", "gD", vim.lsp.buf.declaration, opts_desc("Go to declaration"))
keymap("n", "gd", vim.lsp.buf.definition, opts_desc("Go to definition"))
keymap("n", "gi", vim.lsp.buf.implementation, opts_desc("Go to implementation"))
keymap("n", "ga", vim.lsp.buf.code_action, opts_desc("Code Actions"))
keymap("n", "<leader>rr", vim.lsp.buf.rename, opts_desc("Rename a variable"))

-- diagnostic keymaps
keymap("n", "[d", vim.diagnostic.goto_prev, opts_desc("Go to previous diagnostic"))
keymap("n", "]d", vim.diagnostic.goto_next, opts_desc("Go to next diagnostic"))
keymap("n", "<leader>e", vim.diagnostic.open_float, opts_desc("Open diagnostics in a float window"))
keymap("n", "<leader>q", vim.diagnostic.setloclist, opts_desc("Add diagnostics to location list"))
