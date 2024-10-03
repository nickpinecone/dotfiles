return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        "Issafalcon/neotest-dotnet"
    },

    config = function()
        local neotest = require("neotest")

        neotest.setup({
            adapters = {
                require("neotest-dotnet")
            }
        })

        vim.keymap.set("n", "<leader>tr", neotest.run.run, {})
        vim.keymap.set("n", "<leader>to", neotest.output_panel.toggle, {})
        vim.keymap.set("n", "<leader>ts", neotest.summary.toggle, {})
        vim.keymap.set("n", "<leader>td", function() neotest.run.run({ strategy = "dap" }) end, {})
    end,
}
