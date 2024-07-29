return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		local transparent = true -- set to true to enable transparency

		require("tokyonight").setup({
			style = "storm",
			transparent = transparent,
			styles = {
				sidebars = transparent and "transparent" or "dark",
				floats = transparent and "transparent" or "dark",
			},
		})

		vim.cmd("colorscheme tokyonight-storm")
	end,
}
