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
      require('lualine').setup({
        options = { theme = 'palenight' }
      })
    end,
   },
  {
    'folke/noice.nvim', --nicer cmdline
    event = "VeryLazy",
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    config = function ()
      -- copied from official README
      require("noice").setup({
        lsp = {
        -- override markdown rendering so that cmp and other plugins use Treesitter
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = false, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
      })
    end
  },
}
