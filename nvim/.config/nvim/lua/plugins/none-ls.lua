return {
    "nvimtools/none-ls.nvim",

    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua.with({
                    extra_args = { "--config-path", vim.fn.stdpath("config") .. "stylua.toml" },
                }),

                null_ls.builtins.formatting.clang_format.with({
                    extra_args = { "-style=microsoft" },
                }),

                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.yamlfmt,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
