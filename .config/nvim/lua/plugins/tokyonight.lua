return { -- colorscheme
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require("tokyonight").setup({})
        vim.cmd([[colorscheme tokyonight-storm]])
    end,
}
