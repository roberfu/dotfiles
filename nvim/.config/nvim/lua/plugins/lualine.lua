return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    opt = true
  },
  config = function()
    local lualine = require "lualine"
    lualine.setup {
      options = {
        theme = 'onedark'
      }
    }
  end

}
