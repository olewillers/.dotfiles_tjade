-- ~/.config/nvim/lua/plugins/treesitter.lua
--
-- Author: Ole Willers

return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })
	end,
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "cpp", "lua", "vim", "bash", "python", "php" },
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-n>",
					node_incremental = "<C-n>",
					scope_incremental = "<C-s>",
					node_decremental = "<C-m>",
				},
			},
			--textobjects = {
			--select = {
			--enable = true,
			--lookahead = true,
			--keymaps = {
			--['af'] = '@function.outer',
			--['if'] = '@function.inner',
			--['ac'] = '@class.outer',
			--['ic'] = '@class.inner',
			--},
			--},
			--},
		})
	end,
}
