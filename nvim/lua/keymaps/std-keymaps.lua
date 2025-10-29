-- These are all the keymaps for JUST the key board English characters
-- These do not include the Shift keymaps, see [keymaps/shift-keymaps.lua] for those keymaps
-- Undo is not defined because in Normal Mode ('n'), pressing `u` already undoes your most recent change
vim.keymap.set("n", "r", "<C-r>", vim.tbl_extend("keep", NoChoices, {
    -- This will REDO your last change to the document you wrote
    silent = true,
    desc = "redo last change"
}))

vim.keymap.set("n", "t", ":terminal<CR>", vim.tbl_extend("keep", NoChoices, {
    -- This will open the current window in the terminal.
    silent = true,
    desc = "opens terminal"
}))

vim.keymap.set("n", "q", ":q<CR>", vim.tbl_extend("keep", NoChoices, {
    silent = false,
    desc = "closes current window"
}))
