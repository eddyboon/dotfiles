-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]]

-- Use a protected call so we don't error out on first use
-- local status_ok, packer = pcall(require, "packer")
-- if not status_ok then
-- 	return
-- end

local packer = require "packer"

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

-- Install your plugins her--[[ e ]]
return packer.startup(function(use)
	-- My plugins here
	use "lukas-reineke/lsp-format.nvim"
	-- use "nvim-treesitter/nvim-treesitter"
	use "jiangmiao/auto-pairs"
	use "lukas-reineke/indent-blankline.nvim"
	use { "neoclide/coc.nvim", branch = "release" }
	use "tpope/vim-surround"
	use "phaazon/hop.nvim"
	use "kyazdani42/nvim-tree.lua"
	use "wbthomason/packer.nvim" -- Have packer manage itself
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use {
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } }
	}
	use "nvim-lua/plenary.nvim"
	use {
		"startup-nvim/startup.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require "startup".setup(require "config.startup")
		end
	}


	-- Tab Management
	use({
		'crispgm/nvim-tabline',
		config = function()
			require('tabline').setup({})
		end,
	})

	-- Colorscheme and Status line
	use "navarasu/onedark.nvim"
	use "nvim-lualine/lualine.nvim"
	use "kyazdani42/nvim-web-devicons"

	-- Terminal
	use { "akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup {
			open_mapping = [[<leader>ft]],
			close_on_exit = true,
			direction = 'float',
			float_opts = {
				border = 'rounded',
			}
		}
	end
	}

	-- LSP plugins
	use "neovim/nvim-lspconfig"
	use "williamboman/nvim-lsp-installer"
	use "mfussenegger/nvim-jdtls"

	-- cmp
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-cmdline"
	use "hrsh7th/cmp-path"
	use "saadparwaiz1/cmp_luasnip"

	-- Snippets
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"

	-- WhichKey
	use "folke/which-key.nvim"

	-- LSP Diagnostic
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {
			}
		end
	}

	-- Cursor Tool
	use "mg979/vim-visual-multi"

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	-- if PACKER_BOOTSTRAP then
	-- 	require("packer").sync()
	-- end
end)
