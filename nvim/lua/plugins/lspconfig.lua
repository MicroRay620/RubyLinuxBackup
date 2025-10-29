local servers = {
    "clangd", -- C/C++ LSP (.c/.cpp)
    "cssls", -- CSS LSP (.css)
    "gopls", -- Go LSP (.go)
    "html", -- HTML LSP (.html)
    "jdtls", -- Java LSP (.jar/.java)
    "jsonls", -- JSON LSP (.json)
    "kotlin_language_server", -- Kotlin LSP (.kot)
    "omnisharp", -- C# LSP (.cs)
    "pylsp", -- Python LSP (.py)
    "ruby_lsp", -- Ruby LSP (.rb/.erb)
    "rust_analyzer", -- Rust LSB (.rs)
    "ts_ls", -- Javascript/Typescript LSP (.js/.ts)
    "yamlls"
}

local on_attach = function(_client, _bufnr)
    local opts = { buffer = _bufnr, noremap = true, silent = true }

    -- Key maps
    vim.keymap.set("n", "K", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "F", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "E", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "M", vim.lsp.buf.implementation, opts) -- Fixed typo: implimentation -> implementation
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "<C-r>", vim.lsp.buf.references, opts)
    -- For workspace folders, make the keybind have vim.lsp.buf.<add/remove>_workspace_folder
end

-- Initialize capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Try to enhance capabilities with cmp_nvim_lsp if available
local status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if status then
    capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

return {
    "neovim/nvim-lspconfig",
    event = {"BufNewFile", "BufReadPost"},
    cmd = { "LspInfo", "LspLog", "LspRestart", "LspStart" },
    config = function()
        -- Setup all servers with consistent configuration
        for _, server in ipairs(servers) do
            vim.lsp.config(server, {
                on_attach = on_attach,
                capabilities = capabilities,
            })
        end

        -- CLangd 
        vim.lsp.config("clangd", {
            on_attach = on_attach,
            capabilities = capabilities,
            cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--header-insertion=never",
            },
        })
        -- Kotlin 
        vim.lsp.config("kotlin_language_server", {
            on_attach = on_attach,
            capabilities = capabilities,
        })
        -- Ruby
        -- Make sure you run `sudo gem install ruby-lsp`, this will globally install the ruby-lsp to your system
        vim.lsp.config("ruby_lsp", {
            on_attach = on_attach,
            capabilities = capabilities,
            cmd = { "ruby-lsp" },
        })
        -- Omnisharp 
        vim.lsp.config("omnisharp", {
            on_attach = on_attach,
            capabilities = capabilities,
            cmd = { "omnisharp", "--languageserver" },
        })
    end,
}
