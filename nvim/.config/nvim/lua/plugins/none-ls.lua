return { -- code formating
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},

	config = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting

		null_ls.setup({
			debug = true,
			sources = {
				formatting.stylua,
				formatting.prettier,
				formatting.biome,
                formatting.black,
				require("none-ls.diagnostics.eslint_d"),
			},
		})
        vim.api.nvim_set_keymap("n", "<leader>cf", "<cmd>lua vim.lsp.buf.format()<CR>", { desc = "[F]ormat", noremap = true, silent = true})
	end,
}
