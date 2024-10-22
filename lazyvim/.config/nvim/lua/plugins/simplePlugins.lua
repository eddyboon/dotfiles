return {
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
		config = function()
			require("lualine").setup({
				options = {
					theme = "onedark",
				},
			})
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	-- {
	-- 	"dundalek/lazy-lsp.nvim",
	-- 	dependencies = {
	-- 		"neovim/nvim-lspconfig",
	-- 		{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	-- 		"hrsh7th/cmp-nvim-lsp",
	-- 		"hrsh7th/nvim-cmp",
	-- 	},
	-- 	config = function()
	-- 		local lsp_zero = require("lsp-zero")
	--
	-- 		lsp_zero.on_attach(function(client, bufnr)
	-- 			-- see :help lsp-zero-keybindings to learn the available actions
	-- 			lsp_zero.default_keymaps({
	-- 				buffer = bufnr,
	-- 				preserve_mappings = true,
	-- 			})
	-- 		end)
	-- 		require("lazy-lsp").setup({})
	-- 	end,
	-- },
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"tpope/vim-surround",
	},
	{
		"smoka7/hop.nvim",
		version = "*",
		opts = {
			keys = "etovxqpdygfblzhckisuran",
		},
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				view = {
					side = "right",
					number = true,
					relativenumber = true,
				},
			})
		end,
	},
}
