vim.lsp.config('somesass_ls', {
  cmd = { 'somesass_ls' },  -- Ensure somesass_ls is installed and in PATH
  filetypes = { 'scss', 'sass' },
  root_markers = { '.git' },
  settings = {
    -- Any custom settings for somesass_ls can be added here
  },
  init_options = {
    workspace = function(...) return require("lspconfig.util").root_pattern(".git")(...) end,
  },
})
vim.lsp.enable('somesass_ls')

