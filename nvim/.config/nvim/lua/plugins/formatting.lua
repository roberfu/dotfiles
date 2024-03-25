return { -- autoformat on save
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				formatters_by_ft = { -- add formaters
					lua = { "stylua" },
					json = { "json-lsp" },
					python = { "isort", "black" },
					javascript = { { "prettierd", "prettier" } },
					toml = { "taplo" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
	},
}
