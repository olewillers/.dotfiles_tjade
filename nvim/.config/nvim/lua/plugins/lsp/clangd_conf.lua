-- ~/.config/nvim/lua/plugins/lsp/clangd_conf.lua
--
-- Author: Ole Willers

return {
	vim.lsp.config("clangd", {
		cmd = {
			"clangd",
			"--background-index",
			"--clang-tidy",
			"--completion-style=bundled",
			"--cross-file-rename",
			"--header-insertion=iwyu",
		},
		rootmarkers = { "CMakeLists.txt" },
		filetypes = { "c", "cpp", "h", "hpp" },
		init_options = {
			clangdFileStatus = true, -- Provides information about activity on clangd’s per-file worker thread
			usePlaceholders = true,
			completeUnimported = true,
			semanticHighlighting = true,
		},
	}),
}
