require("options")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y");

vim.filetype.add({
    extension = {
        c3 = "c3",
        c3i = "c3",
        c3t = "c3",
    },
})

vim.diagnostic.config({
    virtual_text = {
        severity = vim.diagnostic.severity.ERROR,
    },
})

-- lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
