-- ~/.config/nvim/lua/plugins/formatter.lua
--
-- Author: Ole Willers

return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	init = function()
		vim.o.formatexpr = [[v:lua.require('conform').formatexpr()]]
	end,
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			c = { "clang-format" },
			h = { "clang-format" },
			cpp = { "clang-format" },
			hpp = { "clang-format" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = false,
		},
		formatters = {
			clang_format = {
				prepend_args = {
					"--style={BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4, UseTab: Never}",
				},
			},
		},
	},
}
