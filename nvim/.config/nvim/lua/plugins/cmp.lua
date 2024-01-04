return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-git", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip", "windwp/nvim-autopairs" },
  event = "VeryLazy",
  config = function()
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    local cmp_autopairs = require "nvim-autopairs.completion.cmp"

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end
      },
      mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item({
          behavior = cmp.SelectBehavior.Insert
        }),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = true
        }
      },
      sources = { {
        name = "nvim_lsp"
      }, {
        name = "path"
      }, {
        name = "luasnip"
      }, {
        name = "buffer"
      } }
    })

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done {
      map_char = {
        tex = ""
      }
    })

    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({ {
        name = 'git'
      } -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
      }, { {
        name = 'buffer'
      } })
    })

    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = { {
        name = 'buffer'
      } }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({ {
        name = 'path'
      } }, { {
        name = 'cmdline'
      } })
    })
  end
}
