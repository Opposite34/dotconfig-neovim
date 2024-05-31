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
        ensure_installed = { "lua_ls", "ols" },
      }

      require("lspconfig").lua_ls.setup {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" } --so that lua doesn't complain in neovim configs
            }
          }
        }
      }

      require("lspconfig").ols.setup {}
    end
  },
}
