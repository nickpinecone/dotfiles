return {
    "akinsho/toggleterm.nvim",
    version = "*",

    config = function()
        require("toggleterm").setup({
            open_mapping = "<C-t>",
            insert_mappings = false,
            shade_terminals = false,
            direction = "float",

            float_opts = {
                width = 160,
                height = 32,
            }
        })

        local Terminal   = require('toggleterm.terminal').Terminal
        local lazydocker = Terminal:new({ cmd = "lazydocker", hidden = true })
        local lazygit    = Terminal:new({ cmd = "lazygit", hidden = true })

        function _lazydocker_toggle()
            lazydocker:toggle()
        end

        function _lazygit_toggle()
            lazygit:toggle()
        end

        vim.api.nvim_set_keymap("n", "<leader>gd", "<cmd>lua _lazydocker_toggle()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
    end,
}
