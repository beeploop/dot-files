return {
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"mason-org/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",

			-- Useful status updates for LSP.
			{ "j-hui/fidget.nvim", opts = {} },

			-- Allows extra capabilities provided by blink.cmp
			"saghen/blink.cmp",
		},
		config = function()
			require("mason").setup()

			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local servers = {
				-- See `:help lspconfig-all` for a list of all the pre-configured LSPs
				clangd = {},
				gopls = {},
				pyright = {},
				rust_analyzer = {},
				ts_ls = {},
				--

				lua_ls = {
					settings = {
						Lua = {
							completion = {
								callSnippet = "Replace",
							},
						},
					},
				},
				html = {
					filetypes = { "html" },
				},
				tailwindcss = {
					filetypes = { "html", "astro", "templ", "javascript", "typescript", "react" },
					settings = {
						tailwindcss = {
							includeLanguages = {
								templ = "html",
							},
						},
					},
				},
			}

			local ensure_installed = vim.tbl_keys(servers or {})
			vim.list_extend(ensure_installed, {
				"stylua", -- Used to format Lua code
				"eslint-lsp",
				"java-debug-adapter",
				"java-test",
			})
			require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

			require("mason-lspconfig").setup({
				ensure_installed = {}, -- explicitly set to an empty table (Kickstart populates installs via mason-tool-installer)
				automatic_installation = false,
				handlers = {
					function(server_name)
						if server_name ~= "jdtls" then
							local server = servers[server_name] or {}
							server.capabilities =
								vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
							require("lspconfig")[server_name].setup(server)
						end
					end,
				},
			})

			-- DART LSP SETUP
			require("mason-lspconfig").setup({
				require("lspconfig")["dartls"].setup({
					settings = {
						dart = {
							analysisExcludeFolders = {
								vim.fn.expand("$HOME/AppData/Local/Pub/Cache"),
								vim.fn.expand("$HOME/.pub-cache"),
								vim.fn.expand("$HOME/tools/flutter"),
								vim.fn.expand("/opt/flutter"),
							},
						},
					},
				}),
			})
		end,
	},
}
