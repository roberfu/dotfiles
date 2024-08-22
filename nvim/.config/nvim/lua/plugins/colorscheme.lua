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
			on_colors = function() end,
			on_highlights = function() end,
		})

		vim.cmd("colorscheme tokyonight-storm")
	end,
}
