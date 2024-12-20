return {
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        -- config = function()
        --     vim.cmd.colorscheme("kanagawa")
        -- end,
    },
    {
        "zenbones-theme/zenbones.nvim",
        dependencies = "rktjmp/lush.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("kanagawabones")
        end,
    },
}
