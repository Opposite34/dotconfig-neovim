return {
  {
    'catppuccin/nvim',
    lazy = false,
    priority = 1000,
    name = 'catppuccin',
    config = function()
      require("catppuccin").setup({flavour = "mocha"})
      vim.cmd.colorscheme "catppuccin"
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    priority = 900,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = { theme = 'palenight' }
      })
    end,
   },
}
