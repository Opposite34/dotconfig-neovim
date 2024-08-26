return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim', --ease of installing language server
      'williamboman/mason-lspconfig.nvim',
      'alaviss/nim.nvim',
    },
    --lspconfig's configuration
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "lua_ls", "pyright", "gopls",
          "nim_langserver",
        },
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

      lsp.pyright.setup{}
      lsp.nim_langserver.setup{}
      lsp.gopls.setup{}

    end
  },
}
