-- ~/.config/nvim/init.lua
--
-- Author: Ole Willers

-- Load Base-config from directory core/
require("core.options")
require("core.keybindings")
require("core.lazy")

-- load all lazy plugins from lua/plugins/
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
