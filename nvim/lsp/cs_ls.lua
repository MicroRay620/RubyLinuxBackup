return {
    cmd = {
        "omnisharp",
    },
    filetypes = {
        "cs",
    },
    root_markers = {
        ".git",
    },

    single_file_support = true,
    log_level = vim.lsp.protocol.MessageType.Warning,
}

