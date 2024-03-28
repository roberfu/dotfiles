return { -- hightlight text
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"bash",
			"html",
			"lua",
			"markdown",
			"vim",
			"vimdoc",
			"xml",
			"http",
			"json",
			"graphql",
			"javascript",
			"typescript",
			"python",
			"java",
			"toml",
		},
		auto_install = true,
		hightlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
