return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {
        'folke/lazydev.nvim', --for helping with configuring neovim
        ft = 'lua',
        config = function()
          require('lazydev').setup()
        end,
      },
      {
        'williamboman/mason.nvim', --ease of installing language server
        opts = {
          registries = {
            'github:nvim-java/mason-registry',
            'github:mason-org/mason-registry',
          },
        },
      },
      'williamboman/mason-lspconfig.nvim',
      {
        'nvim-java/nvim-java',
        ft = 'java',
        dependencies = {
          'nvim-java/lua-async-await',
          'nvim-java/nvim-java-refactor',
          'nvim-java/nvim-java-core',
          'nvim-java/nvim-java-test',
          'nvim-java/nvim-java-dap',
          'MunifTanjim/nui.nvim',
          'neovim/nvim-lspconfig',
          'mfussenegger/nvim-dap',
        },
        config = function()
          require('java').setup({
            jdk = {
              auto_install = false,
            }
          })
        end,
      }
    },
    --lspconfig's configuration
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "pyright", "ols", "jdtls", "clangd", "svelte" },
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
      lsp.ols.setup{}
      lsp.clangd.setup{}
      lsp.svelte.setup{}

      lsp.jdtls.setup({
        settings = {
          java = {
            home = "/usr/lib/jvm/default-runtime",
            configuration = {
              runtimes = {
                {
                  name = "JavaSE",
                  path = "/usr/lib/jvm/default-runtime",
                  default = true,
                }
              }
            }
          }
        }
      })

    end
  },
  {
    'sputnick1124/uiua.vim',
    ft = {"uiua"},
  },
}
