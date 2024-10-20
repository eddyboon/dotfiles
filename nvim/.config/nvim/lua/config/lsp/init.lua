require "nvim-lsp-installer".setup {
	automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗"
		}
	}
}

-- Set up the autocomplete for lsp
require("luasnip.loaders.from_vscode").lazy_load()
local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
	return
end

local cmp = require 'cmp'
require 'cmp'.setup {
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'path' },
		{ { name = 'buffer' } }
	},
	mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<S-Tab>'] = cmp.mapping.select_prev_item(),
		['<Tab>'] = cmp.mapping.select_next_item(),
		['<C-Space>'] = cmp.mapping.complete(),
	}),
	cmp.setup.cmdline(':', {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = 'path' },
			{ name = 'cmdline' },
		})
	}),
	cmp.setup.cmdline('/', {
		mapping = cmp.mapping.preset.cmdline(),
		sources = { { name = 'buffer' } }
	})
}

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Set up auto formatting
require("lsp-format").setup {}

local on_attach = function(client)
	require "lsp-format".on_attach(client)
end

local nvim_lsp = require("lspconfig")


-- Add server
local servers = { "vimls", "ts_ls", "quick_lint_js", "pyright", "bashls", "clangd", "omnisharp", "dockerls", "bashls",
	"dartls", "html", "sourcekit" }

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup {
		capabilities = capabilities,
		on_attach = on_attach,
	}
end

-- Lua Server
require "lspconfig".lua_ls.setup {
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = {
					'vim'
				}
			}
		}
	}
}
