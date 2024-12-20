return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

        configs.setup({
            ensure_installed = {
                "c",
                "c3",
                "cpp",
                "javascript",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "typescript",
                "vim",
                "vimdoc",
            },
            highlight = { enable = true },
            indent = { enable = true },
        })

        parser_config.c3 = {
            install_info = {
                url = "https://github.com/c3lang/tree-sitter-c3",
                files = {"src/parser.c", "src/scanner.c"},
                branch = "v0.4.1",
            },
        }
    end,
}
