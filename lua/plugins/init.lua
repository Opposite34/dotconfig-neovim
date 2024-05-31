return {
  'folke/neodev.nvim', --for helping with configuring neovim
  'tpope/vim-sleuth',  --auto tabstop and shiftwidth
  {
    'm4xshen/autoclose.nvim', --auto closing brackets
    config = function()
      require('autoclose').setup({})
    end,
  },
}
