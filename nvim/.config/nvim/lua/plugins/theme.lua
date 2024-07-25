return {
    "rose-pine/neovim",
    name = "rose-pine",

    config = function()
        require("rose-pine").setup({
            variant = "main",
            dark_variant = "main",

            styles = {
                bold = false,
                italic = false,
                transparency = false,
            },
        })

        vim.cmd.colorscheme("rose-pine")
    end,
}
