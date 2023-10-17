local plugins = {
	{ 'nvim-telescope/telescope.nvim',    dependencies = { 'nvim-lua/plenary.nvim' } },

	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"nvim-telescope/telescope.nvim", -- optional
			"sindrets/diffview.nvim", -- optional
			"ibhagwan/fzf-lua", -- optional
		},
		config = true
	},

	{ "ellisonleao/gruvbox.nvim",         priority = 1000,                           config = true, },
	{ "zbirenbaum/copilot.lua" },

	{ 'nvim-treesitter/nvim-treesitter' },

	{ 'mbbill/undotree' },

	{ 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'L3MON4D3/LuaSnip' },

	{ 'neovim/nvim-lspconfig' },
	{ 'jose-elias-alvarez/null-ls.nvim' },
	{ 'MunifTanjim/prettier.nvim' },

	{ "williamboman/mason.nvim" },
	{ 'williamboman/mason-lspconfig.nvim' },

	{ 'phaazon/hop.nvim' },
	{ 'm4xshen/autoclose.nvim' },
	{ 'akinsho/toggleterm.nvim',          version = "*",                             config = true },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = {
			'kyazdani42/nvim-web-devicons',
			opt = true
		}
	},

	{ 'APZelos/blamer.nvim' },

	{ 'airblade/vim-gitgutter' },

	{ 'numToStr/Comment.nvim' },
	{
		"jackMort/ChatGPT.nvim",
		event = "VeryLazy",
		config = function()
			require("chatgpt").setup()
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim"
		}
	}
}

return plugins
