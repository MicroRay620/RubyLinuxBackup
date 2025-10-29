vim.lsp.config('rust_analyzer', {
  cmd = { 'rust_analyzer' },  -- ensure rust-analyzer is installed and in PATH
  filetypes = { 'rust' },
  root_markers = { 'Cargo.toml', '.git' },
  settings = {
    ['rust_analyzer'] = {
      -- custom rust-analyzer settings here, for example:
      diagnostics = {
        enable = true,
      },
      cargo = {
        allFeatures = true,
      },
      checkOnSave = {
        command = "clippy",
      },
    },
  },
})
vim.lsp.enable('rust_analyzer')

