return {
	{
		"zapling/mason-lock.nvim",
		init = function(_)
			require("mason-lock").setup({
				lockfile_path = vim.fn.stdpath("config") .. "/mason-lock.json", -- (default)
			})
		end,
	},
}
