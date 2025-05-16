-- ~/.config/nvim/lua/plugins/lsp/luals_conf.lua
--
-- Author: Ole Willers
return {
	vim.lsp.config("luals", {
		cmd = { "lua-language-server" },
		root_markers = { "lazy-lock.json" },
		filetypes = { "lua" },
		settings = {
			Lua = {
				runtime = {
					version = "LuaJIT",
				},
				-- TODO: check if last two settings are necessary (ai uptput from early solution)
				diagnostics = {
					globals = { "vim" }, -- erkennt vim als globale Variable
				},
				workspace = {
					library = vim.api.nvim_get_runtime_file("", true),
					checkThirdParty = false, -- verhindert "missing workspace" Warnung
				},
			},
		},
	}),
}
