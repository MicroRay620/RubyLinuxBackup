vim.keymap.set("n", "<C-s>", ":w<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = false,
    desc = "saves the file"
}))

vim.keymap.set("n", "<C-q>", ":qa<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = false,
    desc = "exits neovim"
}))

vim.keymap.set("n", "<C-a>", ":wa<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = false,
    desc = "saves every file in directory"
}))
