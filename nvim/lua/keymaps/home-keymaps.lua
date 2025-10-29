-- Insert already puts the mode to Insert mode
vim.keymap.set("n", "<End>", ":qa<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = false,
    desc = "force ends the session"
}))

vim.keymap.set("n", "<Home>", ":q<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = false,
    desc = "closes current session spot"
}))

