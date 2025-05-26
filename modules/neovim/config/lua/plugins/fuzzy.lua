return {
    "ibhagwan/fzf-lua",
    config = function()
        local fzf = require("fzf-lua")
        fzf.setup({'default'});

        vim.keymap.set('n', '<leader>f', fzf.files, { desc = 'Find [F]iles' })
        vim.keymap.set('n', '<leader>/', fzf.live_grep, { desc = 'Find [F]iles' })
    end,
}
