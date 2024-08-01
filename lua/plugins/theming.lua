return {
  {
    'rose-pine/neovim', --colorscheme
    lazy = false,
    priority = 1000,
    name = 'rose-pine',
    config = function()
      vim.cmd.colorscheme "rose-pine"
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    priority = 900,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = { theme = "palenight" }
      })
    end,
   },
  {
    'folke/noice.nvim', --nicer cmdline
    event = "VeryLazy",
    dependencies = {
      'MunifTanjim/nui.nvim',
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
