--rust-tools
local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

--other languages
local nvim_lsp = require("lspconfig")

--haskell
nvim_lsp.hls.setup({
	on_attach = on_attach,
	settings = {
		haskell = {
			hlintOn = true,
			formattingProvider = "fourmolu"
		}
	}
})

--nim
nvim_lsp.nim_langserver.setup{}

--python
nvim_lsp.pyright.setup{}

--lua
nvim_lsp.lua_ls.setup {
  settings = {
    Lua = {
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      }
    }
  }
}

--clangd (c-families)
require'lspconfig'.clangd.setup{}
