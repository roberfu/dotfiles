return { -- colorscheme
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("onedark").setup({
			style = "warm",
		})
		vim.cmd([[colorscheme onedark]])
	end,
}
