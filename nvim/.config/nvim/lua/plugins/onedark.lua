return {
  "navarasu/onedark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local onedark = require "onedark"
    onedark.setup {
    }
    vim.cmd([[colorscheme onedark]])
  end
}
