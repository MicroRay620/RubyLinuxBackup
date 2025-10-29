return {
    "folke/flash.nvim",
    opts = { modes = { char = { keys = {} } } },
    keys = {
        {"s", function() require("flash").jump() end, mode = { "n", "x" },
            { desc = "Jump with flash.nvim" }
        }
    },
}
