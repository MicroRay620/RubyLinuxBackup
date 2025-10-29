return {
    "folke/which-key.nvim",
    opts = {
        preset = "classic",
        triggers = {},
        plugins = {
            marks = false,
            registers = false,
            spelling = { enabled = false },
        },
        win = { no_overlap = false },
    },
    event = "VeryLazy",
    keys = {
        {"<leader>,", function()
            local wk = require("which-key")
            wk.show({ global = true })
        end, mode = {"n", "v"}, { desc = "Show keybinds" }}
    },
}
