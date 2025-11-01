-- vim.bo.modifiable = true
-- Open NvimTree on startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("nvim-tree.api").tree.open()
  end,
})

-- Load Termdebug on startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("packadd termdebug")
  end,
})


-- Define NoChoices with only noremap and nowait
NoChoices = {
    -- This is used in all the keymap files, you will find those in lua/keymaps/
    noremap = true,
    nowait = true
}

-- This adds diagnoistic to your neovim.
-- Remove this if you don't want this
vim.diagnostic.config({
  virtual_text = {
    prefix = "├──",  -- You can customize the prefix symbol
    spacing = 1,    -- Space between text and prefix
    -- You can also use severity sorting etc.
  },
  signs = true,    -- Show signs in gutter (optional)
  underline = true,
  update_in_insert = false,  -- Avoid flickering while typing
})
-- Require files
require('keymaps')
require('config.lazy')
require('config.lsp')
require('base')
-- runs LSP on startup
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("LspStart")
    end
})
 vim.api.nvim_create_autocmd("BufReadPost", {
   pattern = "*.pdf",
   callback = function()
     local file_path = vim.api.nvim_buf_get_name(0)
     require("pdfview").open(file_path)
   end,
 })
