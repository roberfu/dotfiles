return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      modules = {},
      sync_install = true,
      ignore_install = {},
      auto_install = true,
      highlight = {
        enable = true
      },
      indent = {
        enable = true
      }
    })
  end
}
