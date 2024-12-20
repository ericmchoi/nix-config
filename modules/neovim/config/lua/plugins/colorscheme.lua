return {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    priority = 1000,
    init = function()
        vim.cmd.colorscheme("kanagawabones")
    end,
}
