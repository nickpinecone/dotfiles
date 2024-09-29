vim.cmd("au BufNewFile,BufRead *.cshtml set filetype=html")
vim.cmd("au BufNewFile,BufRead *.ejs set filetype=html")

local function set_filetype(pattern, filetype)
    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
        pattern = pattern,
        command = "set filetype=" .. filetype,
    })
end

set_filetype({ "compose.yml" }, "yaml.docker-compose")
