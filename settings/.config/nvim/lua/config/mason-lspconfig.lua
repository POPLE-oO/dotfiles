require("mason-lspconfig").setup({
	-- install lsp
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
	},
})

local lspconfig = require("lspconfig")

require("mason-lspconfig").setup_handlers({

	-- load lsp
	function(server)
		lspconfig[server].setup({})
	end,

	-- settings lsp
	["lua_ls"] = function()
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end,
})
