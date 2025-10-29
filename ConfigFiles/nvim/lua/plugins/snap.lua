return {
    "camspiers/snap",
    "camspiers/luarocks",
    opts = { rocks = { "fzy" } },
    config = function()
        -- Basic example config
        local snap = require"snap"
        snap.maps {
            { "<leader>s", snap.config.file { producer = "ripgrep.file" }}
        }
    end,
    dependencies = {  "camspiers/luarocks" }
}
