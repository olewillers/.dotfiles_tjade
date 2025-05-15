-- ~/.config/nvim/lua/plugins/nvim-tree.lua
--
-- Author: Ole Willers

-- !! Note: in lua/core/options.lua wurde für die Konfiguration auch netrw deaktiviert !!
return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({})
	end,
}
