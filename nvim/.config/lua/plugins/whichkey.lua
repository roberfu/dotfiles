return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		preset = "helix",
	},
	keys = {
		{
			"<leader>f",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "[F]ind",
		},
		{
			"<leader>c",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "[C]ode",
		},
		{
			"<leader>r",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "[R]un",
		},
	},
}
