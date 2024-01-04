return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<leader>tt', ':Neotree filesystem reveal left<CR>', {})

    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = false,   -- when true, they will just be displayed differently than normal items
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = true,   -- only works on Windows for hidden files/directories
          hide_by_name = {
            --"node_modules"
          },
          hide_by_pattern = {   -- uses glob style patterns
            --"*.meta",
            --"*/src/*/tsconfig.json",
          },
        }
      }
    })
  end
}
