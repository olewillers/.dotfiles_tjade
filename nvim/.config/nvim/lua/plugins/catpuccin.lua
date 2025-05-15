-- ~/.config/nvim/lua/plugins/catpuccin.lua
--
-- Author: Ole Willers

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 999,
	config = function()
		require("catppuccin").setup({
			--flavour = "latte",
			--background = {
			--light = "latte",
			--dark = "mocha",
			--},
			transparent_background = true,
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" }, -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = { "italic" },
				variables = { "bold" },
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
				-- miscs = {}, -- Uncomment to turn off hard-coded styles
			},

			vim.cmd.colorscheme("catppuccin"),
		})
	end,
}
