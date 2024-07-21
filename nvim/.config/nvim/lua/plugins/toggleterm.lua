return {
    "akinsho/toggleterm.nvim",
    version = "*",

    config = function()
        require("toggleterm").setup({
            open_mapping = "<C-t>",
            insert_mappings = false,
            shade_terminals = false,
            direction = "float",
        })
    end,
}
