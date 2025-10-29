vim.keymap.set("n", "<Tab>", ":NvimTreeFocus<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = true,
    desc = "focuses the NvimTree"
}))

vim.keymap.set("n", "*", "*<Cmd>lua require('hslens').start()<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = true,
    desc = "this open hslens"
}))

vim.keymap.set("n", "#", "<Cmd>noh<CR>", vim.tbl_extend("keep", NoChoices,{
    silent = true,
    desc = "this closes hslens"
}))
