return {
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        styles = {
          comments = "italic",
          keywords = "italic",
          functions = "NONE",
          variables = "NONE",
        },
        options = {
          transparency = false,
        },
      })
      vim.cmd.colorscheme("onedark")
    end,
  },
}
