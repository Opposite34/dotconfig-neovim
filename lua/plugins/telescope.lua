return {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter' },
  config = function()

    -- quick and easy way to get the git directory
    -- taken from lualine's evil_lualine example
    local check_git_workspace = function()
      local filepath = vim.fn.expand('%:p:h')
      local gitdir = vim.fn.finddir('.git', filepath .. ';')
      return gitdir and #gitdir > 0 and #gitdir < #filepath
    end

    local builtin = require('telescope.builtin')

    -- find only files tracked by git if git is initialized
    local my_find_func = function()
      if check_git_workspace() then
        builtin.git_files()
      else
        builtin.find_files()
      end
    end

    vim.keymap.set('n', '<leader>ff', my_find_func, { desc = "Find files (git-based context)" })
    vim.keymap.set('n', '<leader>fs', builtin.grep_string, {
      desc = "Find the string under your cursor"
    })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {
      desc = "Find the string in live grep mode"
    })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find files in the buffer" })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find help documentations" })

    vim.keymap.set('n', '<leader>fa',
    function()
      builtin.find_files({hidden=true})
    end, { desc = "Find all files under this dir" })
  end,
}
