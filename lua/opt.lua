--line count
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

--casing when searchin
vim.opt.ignorecase = true
vim.opt.smartcase = true

--tabstop
-- vim.opt.tabstop = 2
-- vim.opt.softtabstop = 2
-- vim.opt.shiftwidth = 2
-- vim.opt.expandtab = true

--clipboards
vim.opt.clipboard = "unnamedplus"


--partially copied from nvim-lua/kickstart.nvim

-- min num of lines to keep above and below the cursor
vim.opt.scrolloff = 10

--undo history
vim.opt.undofile = true

--signcolumn
vim.opt.signcolumn = 'yes'

--decrease update time and mapped sequence wait time (omg this is pretty cool actually)
vim.opt.updatetime = 250
vim.opt.timeoutlen = 500

--highlight yanks
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight the text that's being yanked",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
