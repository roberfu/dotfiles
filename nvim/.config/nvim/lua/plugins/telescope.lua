return { -- search engine
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({})
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]iles"})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[G]rep"})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[B]uffer"})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[H]elp"})
	end,
}
