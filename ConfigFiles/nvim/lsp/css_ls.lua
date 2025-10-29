vim.lsp.config('cssls', {
  cmd = { 'vscode-css-language-server', '--stdio' },  -- ensure css language server is installed and in PATH
  filetypes = { 'css', 'scss', 'less' },
  root_markers = { '.git' },
  settings = {
    css = {
      validate = true,  -- enable CSS validation
      lint = {
        unknownAtRules = 'ignore'  -- example lint setting, adapt as needed
      }
    },
  },
})
vim.lsp.enable('cssls')

