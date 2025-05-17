---- ~/.config/nvim/lua/plugins/lsp/luals_conf.lua
----
---- Author: Ole Willers
return {
	vim.lsp.config("lua_ls", {
		cmd = { "lua-language-server" },
		root_markers = { "lazy-lock.json" },
		filetypes = { "lua" },
		settings = {
			Lua = {
				runtime = {
					version = "LuaJIT",
				},
			},
		},
	}),
}
