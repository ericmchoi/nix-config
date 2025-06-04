return {
    'neovim/nvim-lspconfig',
    config = function()
        vim.lsp.enable({
            'clangd',
            'lua_ls',
            'terraformls',
            'ts_ls'
        })

        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
            callback = function()
                local fzf = require('fzf-lua')

                vim.keymap.set('n', 'gd', fzf.lsp_definitions, { desc = '[G]oto [D]efinition' })
                vim.keymap.set('n', 'gy', fzf.lsp_typedefs, { desc = '[G]oto T[y]pe Definition' })
                vim.keymap.set('n', 'gr', fzf.lsp_references, { desc = '[G]oto [R]eferences' })
                vim.keymap.set('n', 'gi', fzf.lsp_implementations, { desc = '[G]oto [I]mplementation' })

                vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { desc = '[R]ename' })
                vim.keymap.set('n', '<leader>a', vim.lsp.buf.rename, { desc = '[A]pply Code Action' })

                vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open [D]iagnostics' })
            end
        })

        vim.diagnostic.config({
            severity_sort = true
        })
    end,
}
