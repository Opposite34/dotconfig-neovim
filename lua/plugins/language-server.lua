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
          "lua_ls", "pylsp", "gopls", "ols", "nim_langserver",
          "matlab_ls",
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

      lsp.matlab_ls.setup({
        filetypes = {"matlab"},
        settings = {
          matlab = {
            indexWorkspace = true,
            installPath = "~/Apps/MATLAB/R2024b/",
            matlabConnectionTiming = "onStart",
            telemetry = false,
          },
        },
        single_file_support = true
      })

      lsp.pylsp.setup{}
      lsp.gopls.setup{}
      lsp.ols.setup{}
      lsp.nim_langserver.setup{}

    end
  },
}
