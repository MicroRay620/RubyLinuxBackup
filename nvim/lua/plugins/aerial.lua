return {
    "stevearc/aerial.nvim",
    opts = {
    	close_on_select = true,
        highlight_on_jump = 300,
        keymaps = { ["<M-o>"] = "actions.close" },
        show_guides = true,
    },
    keys = {
        { "<M-o>", "<cmd>AerialOpen right<cr>", { desc = "Open code outline" } },
    },
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
}
