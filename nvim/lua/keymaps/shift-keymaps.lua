-- Shift Keybinds
vim.keymap.set("n", "S", ":w<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = false,
    desc = "alternative saves file"
}))

vim.keymap.set("n", "A", ":wa<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = false,
    desc = "alternative save all files"
}))

vim.keymap.set("n", "T", ":Termdebug<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = false,
    desc = "opens Termdebug"
}))

vim.keymap.set("n", "E", ":Ex<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = true,
    desc = "opens neovim built in file explorer"
    -- % is new file
    -- d is new directory
    -- navigation keys work
}))
