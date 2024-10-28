
vim.opt.ruler = false
vim.opt.showcmd = false
vim.opt.laststatus = 0

-- hide 'written message' default: ltToOCF
vim.opt.shortmess:append("W")

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- require("config")

vim.opt.clipboard = "unnamedplus"

-- vim.o.number = true
-- vim.o.relativenumber = true -- Show relative line numbers

vim.o.nocompatible = true

vim.o.ignorecase = true

vim.o.hlsearch = true

vim.o.incsearch = true

vim.o.tabstop = 4

vim.o.expandtab = true

vim.o.shiftwidth = 4

-- Indents word-wrapped lines as much as the 'parent' line
vim.o.autoindent = true
-- Ensures word-wrap does not split words
vim.o.breakindent = true

vim.o.linebreak = true

-- vim.o.formatoptions = "l"
-- vim.o.lbr = true



vim.o.wildmode = "longest,list"

vim.cmd([[syntax on]])

vim.o.clipboard = "unnamedplus"

vim.o.ttyfast = true

-- filetype on

-- -- Enable cursor line
-- vim.opt.cursorline = true
-- -- Customize cursor line color
-- vim.cmd [[
--   hi CursorLine guibg=Grey guifg=None ctermbg=8 ctermfg=None
--   hi CursorLine cterm=NONE gui=NONE
-- ]]

vim.api.nvim_set_keymap('n', 'j', "v:count ? 'j' : 'gj'", {expr = true, noremap = true})
vim.api.nvim_set_keymap('n', 'k', "v:count ? 'k' : 'gk'", {expr = true, noremap = true})

vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', {noremap = true})

vim.api.nvim_set_keymap('n', 'n', 'nzzzv', {noremap = true})
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', {noremap = true})

vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>q', ':wq<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>t', ':q!<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<S-C-V>', '<C-V>', {noremap = true})
vim.api.nvim_set_keymap('i', '<S-C-V>', '<C-V>', {noremap = true})
vim.api.nvim_set_keymap('v', '<S-C-V>', '<C-V>', {noremap = true})

-- When editing a file, always jump to the last known cursor position.
vim.cmd([[
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
]])

