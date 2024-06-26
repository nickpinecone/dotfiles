local servers = { "lua_ls", "csharp_ls", "clangd", "cssls", "html", "tsserver", "marksman" }

return {
    {
        "williamboman/mason.nvim",
        dependencies = { "jay-babu/mason-nvim-dap.nvim" },

        config = function()
            require("mason").setup()
            require("mason-nvim-dap").setup({
                ensure_installed = { "coreclr", "codelldb", "js" },
                handlers = {},
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = servers,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")

            for _, name in ipairs(servers) do
                lspconfig[name].setup({
                    capabilities = capabilities,
                })
            end

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
        end,
    },
}
