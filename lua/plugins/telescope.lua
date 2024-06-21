return {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
    vim.keymap.set('n', '<leader>fs', builtin.grep_string, {
      desc = "Find the string under your cursor"
    })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {
      desc = "Find the string in live grep mode"
    })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find files in the buffer" })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find help documentations" })
  end,
}
