return {
	"mistweaverco/kulala.nvim",
	config = function()
		require("kulala").setup()
		vim.keymap.set("n", "<leader>rr", ":lua require('kulala').run()<CR>", {})
	end,
}
