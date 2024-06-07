return {
  'tpope/vim-sleuth',  --auto tabstop and shiftwidth
  {
    'm4xshen/autoclose.nvim', --auto closing brackets
    config = function()
      require('autoclose').setup()
    end,
  },
  {
    'echasnovski/mini.ai', --extended "around" and "inside" (dap, cip, etc) functionality
    config = function()
      require('mini.ai').setup()
    end,
  },
  {
    'folke/which-key.nvim',
    event = "VeryLazy",
  },
}
