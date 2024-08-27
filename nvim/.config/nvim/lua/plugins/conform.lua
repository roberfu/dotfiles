return { -- autoformat
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {

            "<leader>cf",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,

            mode = "",
            desc = "[F]ormat",
        },
    },

    opts = {

        notify_on_error = false,
        format_on_save = function(bufnr)
            -- Disable "format_on_save lsp_fallback" for languages that don't
            -- have a well standardized coding style. You can add additional
            -- languages here or re-enable it for the disabled ones.
            local disable_filetypes = { c = true, cpp = true }
            return {
                timeout_ms = 500,
                lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
            }
        end,
        formatters_by_ft = {
            lua = { "stylua" },
            json = { "jq" },
            python = { "black" },
            xml = { "xmlformat" },
            -- Conform can also run multiple formatters sequentially
            -- python = { "isort", "black" },

            --
            -- You can use 'stop_after_first' to run the first available formatter from the list
            -- javascript = { "prettierd", "prettier", stop_after_first = true },
        },
        formatters = {
            stylua = {
                prepend_args = { "--indent-type", "Spaces", "--indent-width", "4" },
            },
            black = {
                prepend_args = { "--line-length", "120", "--skip-string-normalization" },
            },
            jq = {
                prepend_args = { "--indent", "2" },
            },
        },
    },
}
