-- ~/.config/nvim/lua/plugins/lsp/intelephense.lua
--
-- Author: Ole Willers

return {
	vim.lsp.config("intelephense", {
		cmd = { "intelephense" },
		root_markers = { ".env", "composer.lock", "composer.json" },
		filetypes = { "php" },
	}),
}
