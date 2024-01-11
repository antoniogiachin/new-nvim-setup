-- Set tab and indent-related options
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Set case sensitivity options
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Disable GUI cursor
vim.opt.guicursor = ""

-- Enable smart indenting
vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = false

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Highlight text on yank
vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    group = "YankHighlight",
    callback = function()
        vim.highlight.on_yank({higroup = "IncSearch", timeout = 40})
    end
})

-- Key mappings for Space in normal and visual mode
vim.api.nvim_set_keymap("n", "<Space>", ":call VSCodeNotify('whichkey.show')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<Space>", ":call VSCodeNotify('whichkey.show')<CR>", { noremap = true, silent = true })
