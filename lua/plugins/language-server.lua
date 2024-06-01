return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'folke/neodev.nvim', --for helping with configuring neovim
      'williamboman/mason.nvim', --ease of installing language server
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "pyright", "ols" },
      }

      local lsp = require("lspconfig")

      lsp.lua_ls.setup {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" } --so that lua doesn't complain in neovim configs
            }
          }
        }
      }

      lsp.pyright.setup {}
      lsp.ols.setup {}
    end
  },
}
