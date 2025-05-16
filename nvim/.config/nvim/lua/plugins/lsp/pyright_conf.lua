-- ~/.config/nvim/lua/plugins/lsp/pyright_conf.lua
--
-- Author: Ole Willers

return {
	vim.lsp.config("pyright", {
		filetypes = { "py" },
	}),
}
