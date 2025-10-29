vim.lsp.config('html', {
  cmd = { 'html-lsp', '--stdio' },  -- ensure html language server is installed and in PATH
  filetypes = { 'html' },
  root_markers = { '.git' },
  settings = {
    html = {
      format = {
        enable = true,  -- enable formatting on html files
      },
      hover = {
        documentation = true,  -- enable hover documentation
      },
      suggest = {
        html5 = true,  -- enable html5 suggestions
      },
      validate = {
        enable = true,  -- enable validation for html
      },
    },
  },
})
vim.lsp.enable('html')

