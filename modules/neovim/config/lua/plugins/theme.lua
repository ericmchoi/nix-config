return {
    --"rebelot/kanagawa.nvim",
    --priority = 1000,
    --config = function()
    --    vim.cmd([[colorscheme kanagawa]])
    --end,
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    priority = 1000,
    config = function()
        vim.g.zenbones_compat = 1
        vim.cmd.colorscheme('zenwritten')
        --vim.api.nvim_create_autocmd("OptionSet", {
        --    pattern = "background",
        --    callback = function()
        --        local light = "zenbones"
        --        local dark = "nordfox"
        --        if vim.o.background == "light" and vim.g.fox_theme ~= light then
        --                vim.g.fox_theme = light
        --                vim.cmd.colorscheme(light)
        --            end
        --            if vim.o.background == "dark" and vim.g.fox_theme ~= dark then
        --                vim.g.fox_theme = dark
        --                vim.cmd.colorscheme(dark)
        --            end
        --        end,
        --})
    end,
}
