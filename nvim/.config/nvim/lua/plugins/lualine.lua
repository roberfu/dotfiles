return {
  'nvim-lualine/lualine.nvim',
  requires = {
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
