-- ~/.config/nvim/lua/plugins/telescope.lua
--
-- Author: Ole Willers

return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
					layout_config = {
						horizontal = { width = 0.9 },
					},
					file_ignore_patterns = { "node_modules", ".git/", "__pycache__/" },
				},
			})

			-- Keybindings
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Dateien suchen" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Text suchen (grep)" })
			vim.keymap.set("n", "<leader>fo", builtin.buffers, { desc = "Geöffnete Dateien" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Hilfe durchsuchen" })
		end,
	},
}
