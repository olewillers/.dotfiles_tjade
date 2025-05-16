-- ~/.config/nvim/lua/plugins/lsp.lua
--
-- Author: Ole Willers

require("lazy").setup({
	{ import = "plugins.catpuccin" },
	{ import = "plugins.tiny-inline-diagnostics" },
	{ import = "plugins.mason" },
	{ import = "plugins.lualine" },
	{ import = "plugins.telescope" },
	{ import = "plugins.nvim-tree" },
	{ import = "plugins.treesitter" },
	{ import = "plugins.lsp" },
	{ import = "plugins.lint" },
	{ import = "plugins.nvim-autopairs" },
	{ import = "plugins.blink-cmp" },
	{ import = "plugins.formatter" },
	{ import = "plugins.whichkey" },
})
