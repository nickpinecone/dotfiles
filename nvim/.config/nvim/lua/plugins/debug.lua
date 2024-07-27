return {
    {
        "mfussenegger/nvim-dap",
        dependencies = { "rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio" },

        config = function()
            local dap = require("dap")
            local dapui = require("dapui")

            dap.adapters.elixir = {
                type = "executable",
                command = vim.fn.exepath("elixir-ls-debugger"),
                args = {},
            }

            dap.configurations.elixir = {
                {
                    type = "elixir",
                    name = "mix test",
                    task = "test",
                    taskArgs = { "--trace" },
                    request = "launch",
                    startApps = true,
                    projectDir = "${workspaceFolder}",
                    requireFiles = {
                        "test/**/test_helper.exs",
                        "test/**/*_test.exs",
                    },
                },
            }

            require("dapui").setup({})

            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end

            vim.keymap.set("n", "<leader>dc", dap.continue, {})
            vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
        end,
    },
}
