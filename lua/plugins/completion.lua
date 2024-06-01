return {
  {
    'hrsh7th/nvim-cmp',
    lazy = false,
    priority = 100,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',
      { 'L3MON4D3/LuaSnip', build = 'make install_jsregexp' },
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
      local cmp = require('cmp')

      --use selection instead of inserting completion immediately
      local select_opts = { behavior = cmp.SelectBehavior.Select }

      cmp.setup({
        sources = {
          {name = 'path'},
          {name = 'nvim_lsp'},
          {name = 'buffer'},
          {name = 'luasnip'},
        },

        mapping = {
          ['<C-j>'] = cmp.mapping.select_next_item { behavior = select_opts },
          ['<C-k>'] = cmp.mapping.select_prev_item { behavior = select_opts },
          ['<CR>'] = cmp.mapping.confirm({ select='true' }),
          ['<TAB>'] = cmp.mapping.confirm({ select='true' }),
        },

        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body)
          end
        }
      })

    end,
  }
}
