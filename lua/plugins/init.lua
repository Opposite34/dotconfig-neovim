return {
  'tpope/vim-sleuth',  --auto tabstop and shiftwidth
  {
    'm4xshen/autoclose.nvim', --auto closing in insert mode
    config = function()
      require('autoclose').setup()
    end,
  },
  {
    'folke/which-key.nvim',
    event = "VeryLazy",
  },
}
