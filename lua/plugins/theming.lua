return {
  {
    'catppuccin/nvim', --colorscheme
    lazy = false,
    priority = 1000,
    name = 'catppuccin',
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        highlight_overrides = {
          mocha = function(colors)
            return {
              LineNr = { fg = colors.overlay0 },
              CursorLineNr = { fg = colors.mauve }
            }
          end,
        },
      })
      vim.cmd.colorscheme "catppuccin"
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    priority = 900,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local custom_palenight = require("lualine.themes.palenight")

      custom_palenight.normal.a.bg = "#f38ba8"
      custom_palenight.normal.b.fg = "#f38ba8"

      custom_palenight.insert.a.bg = "#89dceb"
      custom_palenight.insert.b.fg = "#89dceb"

      custom_palenight.visual.a.bg = "#cba6f7"
      custom_palenight.visual.b.fg = "#cba6f7"

      custom_palenight.replace.a.bg = "#94e2d5"
      custom_palenight.replace.b.fg = "#94e2d5"

      require('lualine').setup({
        options = { theme = custom_palenight }
      })
    end,
   },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  },
}
