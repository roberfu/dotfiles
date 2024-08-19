return { -- theme
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "storm",
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "dark",
			},
		})

		vim.cmd("colorscheme tokyonight-storm")
	end,
}
