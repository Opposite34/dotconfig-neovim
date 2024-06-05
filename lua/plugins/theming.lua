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
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
      })
      require("telescope").load_extension("noice")

      --dismiss notification with ESC
      vim.api.nvim_create_user_command("RemoveNotiAndHl", function ()
          vim.cmd("nohlsearch")
          vim.cmd("Noice dismiss")
      end, {})
      vim.keymap.set("n", "<Esc>", "<cmd>RemoveNotiAndHl<CR>", { noremap=true, silent=true })
    end
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  },
  {
    'HiPhish/rainbow-delimiters.nvim',
  },
}
