return { -- language server protocol config
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "nvim-lua/plenary.nvim",
        { "folke/neodev.nvim", opts = {} },
    },
    config = function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

        local util = require("lspconfig/util")
        local path = util.path

        local servers = { -- add servers to ensure install and add some config
            lua_ls = {
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = "Replace",
                        },
                    },
                },
            },
            pyright = {
                before_init = function(_, config)
                    local root_dir = util.find_git_ancestor(vim.fn.getcwd()) or vim.fn.getcwd()
                    local venv = path.join(root_dir, ".venv", "bin", "python")

                    if vim.fn.executable(venv) == 1 then
                        config.settings.python.pythonPath = venv
                    else
                        local default_venv_path = path.join(vim.env.HOME, "virtualenvs", "nvim-venv", "bin", "python")
                        config.settings.python.pythonPath = default_venv_path
                    end
                end,
            },
        }
        require("mason").setup()
        local ensure_installed = vim.tbl_keys(servers or {})
        vim.list_extend(ensure_installed, { -- add servers to ensure install without config
            "stylua",
            "jq",
            "black",
        })
        require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

        require("mason-lspconfig").setup({
            handlers = {
                function(server_name)
                    if server_name ~= "jdtls" then
                        local server = servers[server_name] or {}
                        server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
                        require("lspconfig")[server_name].setup(server)
                    end
                end,
            },
        })
    end,
}
