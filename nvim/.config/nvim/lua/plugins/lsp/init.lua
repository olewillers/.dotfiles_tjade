-- ~/.config/nvim/lua/plugins/lsp/init.lua
--
-- Author: Ole Willers

return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.lsp.luals_conf")
			require("plugins.lsp.clangd_conf")
			require("plugins.lsp.pyright_conf")
			require("plugins.lsp.intelephense_conf")

			vim.lsp.config("*", {
				root_markers = { ".git" },
				capabilities = require("blink-cmp").get_lsp_capabilities(),
			})
			vim.lsp.enable({ "lua_ls", "clangd", "pyright", "intelephense" })
		end,
	},
}
