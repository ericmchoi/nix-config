return {
    "ibhagwan/fzf-lua",
    config = function()
        local fzf = require("fzf-lua")
        fzf.setup({
            defaults = {
                fd_opts = [[--color=never --hidden --type f --type l --no-require-git]],
            }
        });

        vim.keymap.set('n', '<leader>f', fzf.files, { desc = 'Find [F]iles' })
        vim.keymap.set('n', '<leader>/', fzf.live_grep, { desc = 'Find [F]iles' })
    end,
}
