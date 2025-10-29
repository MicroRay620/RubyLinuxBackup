return { "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local cmp = require("cmp")
        local sources = {
            { name = "buffer" },
            { name = "nvim_lsp" },
        }
        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ["<m-b>"] = cmp.mapping.scroll_docs(-4),
                ["<m-f>"] = cmp.mapping.scroll_docs(4),
                ["<tab>"] = cmp.mapping.confirm({ select = true }),
            }),
        })
    end,
}
