return {
    "elmcgill/springboot-nvim",
    depedencies = {
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-jdtls"
    },
    config = function()
        local springboot_nvim = require("springboot-nvim")
        vim.keymap.set('n', '<leader>jr', springboot_nvim.boot_run, {desc = "Spring Boot [R]un Project"})
        vim.keymap.set('n', '<leader>jc', springboot_nvim.generate_class, {desc = "Java Create [C]lass"})
        vim.keymap.set('n', '<leader>ji', springboot_nvim.generate_interface, {desc = "Java Create [I]nterface"})
        vim.keymap.set('n', '<leader>je', springboot_nvim.generate_enum, {desc = "Java Create [E]num"})
        springboot_nvim.setup()
    end
}
