-- ~/.config/nvim/lua/plugins/tiny-inline-diagnostics.lua
--
-- Author: Ole Willers

return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "VeryLazy",
	priority = 1000,
	config = function()
		require("tiny-inline-diagnostic").setup({
			preset = "powerline",
			hi = {
				error = "DiagnosticError",
				warn = "DiagnosticWarn",
				info = "DiagnosticInfo",
				hint = "DiagnosticHint",
				arrow = "NonText",
				background = "CursorLine",
				mixing_color = "None",
			},
			options = {
				show_source = { enabled = false },
				use_icons_from_diagnostic = false,
				add_messages = true,
				throttle = 20,
				softwrap = 30,
				multilines = {
					enabled = true,
					always_show = false,
				},
				show_all_diags_on_cursorline = true,
				enable_on_insert = false,
				enable_on_select = false,
				overflow = {
					mode = "wrap",
				},
			},
		})
		vim.diagnostic.config({ virtual_text = false })
	end,
}
