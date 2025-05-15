-- ~/.config/nvim/lua/plugins/lsp.lua
--
-- Author: Ole Willers

return {
	{
		"neovim/nvim-lspconfig",
		--dependencies = { 'folke/neodev.nvim', },
		config = function()
			local capabilities = require("blink-cmp").get_lsp_capabilities()

			--require('neodev').setup({})

			local lspconfig = require("lspconfig")

			-- Lua LSP support with lua-language-server
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						capabilities = capabilities,
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = {
							globals = { "vim" }, -- erkennt vim als globale Variable
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false, -- verhindert "missing workspace" Warnung
						},
						telemetry = {
							enable = false, -- keine Telemetrie
						},
					},
				},
			})

			-- C++ lsp support with clangd
			lspconfig.clangd.setup({
				cmd = {
					"clangd",
					"--background-index",
					"--clang-tidy",
					"--completion-style=bundled",
					"--cross-file-rename",
					"--header-insertion=iwyu",
				},
				capabilities = capabilities,
				filetypes = { "c", "cpp", "h", "hpp" },
				init_options = {
					clangdFileStatus = true, -- Provides information about activity on clangd’s per-file worker thread
					usePlaceholders = true,
					completeUnimported = true,
					semanticHighlighting = true,
				},
			})

			lspconfig.pyright.setup({
				capabilities = capabilities,
				filetypes = { "py" },
			})
		end,
	},
}
