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
  }
}