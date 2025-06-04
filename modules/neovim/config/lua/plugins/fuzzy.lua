return {
    "ibhagwan/fzf-lua",
    config = function()
        local fzf = require("fzf-lua")
        fzf.setup({
            rg_opts = [[--color=never --hidden --files -g "!.git|!.jj"]],
            fd_opts = [[--color=never --hidden --type f --type l --exclude .git --exclude .jj]],
        });

        vim.keymap.set('n', '<leader>f', fzf.files, { desc = 'Find [F]iles' })
        vim.keymap.set('n', '<leader>/', fzf.live_grep, { desc = 'Find [F]iles' })
    end,
}
