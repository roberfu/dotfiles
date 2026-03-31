return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      { "williamboman/mason.nvim",           lazy = true },
      { "williamboman/mason-lspconfig.nvim", lazy = true },
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = args.buf, desc = desc })
          end
          map("gd", vim.lsp.buf.definition, "Ir a definición")
          map("K", vim.lsp.buf.hover, "Documentación hover")
          map("<leader>ca", vim.lsp.buf.code_action, "Code action")
          map("<leader>cr", vim.lsp.buf.rename, "Renombrar símbolo")
          map("gr", vim.lsp.buf.references, "Referencias")
          map("[d", vim.diagnostic.goto_prev, "Diagnóstico anterior")
          map("]d", vim.diagnostic.goto_next, "Diagnóstico siguiente")
        end,
      })

      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = { enable = false },
          },
        },
      })
      vim.lsp.enable("lua_ls")
    end,
  },
}
