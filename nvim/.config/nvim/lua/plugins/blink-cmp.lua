-- ~/.config/nvim/lua/plugins/blink-cmp-lua
--
-- Author: Ole Willers

return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },

	version = "1.*",

	opts = {
		keymap = { preset = "super-tab" },
		appearance = { nerd_font_variant = "mono" },
	},
}
