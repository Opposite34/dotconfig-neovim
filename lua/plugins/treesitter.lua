return {
  'nvim-treesitter/nvim-treesitter',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'lua', 'markdown', 'markdown_inline', --necessary parsers for buf.hover()
        'cpp', 'python', 'odin', 'java', 'nim', --languages
        'svelte', --frameworks and libraries
      },
    }
  end,
}
