-- These are for the function keys
vim.keymap.set("n", "<F2>", ":Run<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = true,
    desc = "runs the debugged code"
}))

