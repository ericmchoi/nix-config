return {
    'lewis6991/gitsigns.nvim',
    {
        'nmac427/guess-indent.nvim',
        opts = {},
    },
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
}
