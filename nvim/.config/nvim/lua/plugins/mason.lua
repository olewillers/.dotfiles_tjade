-- ~/.config/nvim/lua/plugins/mason.lua
--
-- Author: Ole Willers

return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "pyright", "lua_ls", "clangd", "intelephense" },
				automatic_installation = true,
			})
		end,
	},

	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"stylua",
					"luacheck",
					"pylint",
					"clang-format",
				},
				auto_update = false,
				run_on_start = true,
				start_delay = 3000, -- optional: Verzögerung in ms beim Start
			})
		end,
	},
}
