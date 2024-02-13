return {
  "rest-nvim/rest.nvim",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  config = function()
    require("rest-nvim").setup({
      --- Get the same options from Packer setup
    })
    vim.api.nvim_set_keymap("n", "<leader>rr", "<Plug>RestNvim", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>rp", "<Plug>RestNvimPreview", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>rl", "<Plug>RestNvimLast", { noremap = true, silent = true })
  end
}

