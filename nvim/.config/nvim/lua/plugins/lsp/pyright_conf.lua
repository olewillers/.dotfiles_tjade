-- ~/.config/nvim/lua/plugins/lsp/pyright_conf.lua
--
-- Author: Ole Willers

return {
	vim.lsp.config("pyright", {
		cmd = { "pyright-langserver", "--stdio" },
		root_markers = { ".venv", "__pycache__" },
		filetypes = { "python" },
	}),
}
