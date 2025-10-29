return {
    "mfussenegger/nvim-lint",
    config = function()
        require("lint").linters_by_ft = {
            c = {"clang-tidy", "cppcheck"},
            cpp = {"clang-tidy", "cppcheck"},
            cs = {"dotnet-format"},
            javascript = {"eslint-lsp"},
            lua = {"luacheck"},
            markdown = {"markdownlint"},
            python = {"flake8", "mypy"},
            sh = {"shellcheck"},
            typescript = {"eslint_d"},
        }
    end
}
