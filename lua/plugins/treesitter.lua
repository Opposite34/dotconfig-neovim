return {
  'nvim-treesitter/nvim-treesitter',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'lua', 'markdown', 'markdown_inline', --necessary parsers for buf.hover()
        'vim', 'regex', 'bash', --necessary parsers for noice
        'cpp', 'python', 'odin', 'java', --languages
        'svelte', --frameworks and libraries
      },
    }
  end,
}
