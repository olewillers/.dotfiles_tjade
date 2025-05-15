-- ~/.config/nvim/lua/plugins/lint.lua
--
-- Author: Ole Willers

return {
	"mfussenegger/nvim-lint",
	cond = false,
	config = function()
		local lint = require("lint")

		-- den Linter auch mit masoon-tool-installer installieren!!
		lint.linters_by_ft = {
			lua = { "luacheck" },
			py = { "pylint" },
		}

		vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost" }, {
			callback = function()
				local lint_status, lint = pcall(require, "lint")
				if lint_status then
					lint.try_lint()
				end
			end,
		})
	end,
}
