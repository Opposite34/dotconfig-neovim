require('packer').startup(function()
  -- packer itself
	use 'wbthomason/packer.nvim'

  -- autocomplete etc
	use 'm4xshen/autoclose.nvim'
  require("autoclose").setup({})

  -- comments QOL
  use 'tpope/vim-commentary'

  -- motions etc
  use 'jessekelighine/vindent.vim' 

  use 'neovim/nvim-lspconfig'
  use 'simrat39/rust-tools.nvim'

  -- nim syntax highlighting
  use 'alaviss/nim.nvim'

	use {
    'hrsh7th/nvim-cmp',
    requires = { 
				'hrsh7th/cmp-nvim-lsp',
				'hrsh7th/cmp-buffer',
				'hrsh7th/cmp-path',
				'hrsh7th/cmp-cmdline',
				'hrsh7th/nvim-cmp',
				--luasnip
				'L3MON4D3/LuaSnip',
				'saadparwaiz1/cmp_luasnip',
			}
  }
	
	-- appearance
	-- better status line
 	use {
    'nvim-lualine/lualine.nvim',
 		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  
  -- color schema
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  
  -- nvim tree (use either this or telescope)
  --[[
    use {
      'nvim-tree/nvim-tree.lua',
			requires = { 'nvim-tree/nvim-web-devicons', opt = true }
   }
   ]]--

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- misc
  -- killersheep (game)
  use 'seandewar/killersheep.nvim'

end)


