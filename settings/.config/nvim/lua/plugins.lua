return {
	-- status line
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require('config/lualine')
		end
	},

	-- mason: editor tool manager (like lsp)
	{
		"williamboman/mason.nvim",
		config = function()
			require("config/mason")
		end,
	},
	{
		'williamboman/mason-lspconfig.nvim',
		dependencies = {
			'neovim/nvim-lspconfig',
		},
		config = function()
			require("config/mason-lspconfig")
		end,
	},

	-- completion
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'neovim/nvim-lspconfig',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline'
		},
		config = function()
			require("config/nvim-cmp")
		end
	},

	-- snippet
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			'saadparwaiz1/cmp_luasnip',
			"rafamadriz/friendly-snippets",
		},
		build = "make install_jsregexp",
		config = function ()
			require("config/luasnip")
		end
	},

	-- linter
	{
		'mfussenegger/nvim-lint',
		config = function ()
			require("config/lint")
		end
	},

	-- formatter
	{
		'mhartington/formatter.nvim',
		config = function ()
			require("config/formatter")
		end
	}

}
