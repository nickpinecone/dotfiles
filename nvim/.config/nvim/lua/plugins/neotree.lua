return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },

    config = function()
        require("neo-tree").setup({
            filesystem = {
                window = {
                    mappings = {
                        ["o"] = "system_open",
                    },
                },
            },
            commands = {
                system_open = function(state)
                    local node = state.tree:get_node()
                    local path = node:get_id()
                    vim.fn.jobstart({ "xdg-open", path }, { detach = true })
                end,
            },
        })

        vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal left<CR>", {})
    end,
}
