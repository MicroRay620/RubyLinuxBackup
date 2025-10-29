return {
    -- This sets the color scheme 
    -- Here are some other themese you can use if you don't want transparent or dracula:
    -- "catppuccin/nvim.nvim"
    -- "navarasu/onedark.nvim"
    "Mofiqul/dracula.nvim",-- Change this to the github like (anything after github.com/) and paste it here 
    config = function()
        vim.cmd("colorscheme dracula") -- Change this to the theme name as well if you're changing it
        -- vim.cmd("colorscheme nvim")
        -- vim.cmd("colorscheme onedark")
    end,
}
