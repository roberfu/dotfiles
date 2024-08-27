return { -- http request
    "mistweaverco/kulala.nvim",
    opts = {
        split_direction = "vertical",
        winbar = true,
    },
    config = function()
        require("kulala").setup()

        vim.api.nvim_set_keymap(
            "n",
            "<leader>rr",
            ":lua require('kulala').run()<CR>",
            { desc = "Http [R]equest", noremap = true, silent = true }
        )
    end,
}
