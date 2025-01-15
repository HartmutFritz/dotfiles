-- My own remaps

vim.g.mapleader = " "

vim.keymap.set('n', 'j', "gj", {noremap = true})
vim.keymap.set('n', 'k', "gk", {noremap = true})
-- sachen werden unten rechts angezeigt wenn expr = true

vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<A-s>', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':wq<CR>')
vim.keymap.set('n', '<leader>t', ':q!<CR>')


-- select all, Y
vim.keymap.set('n', '<C-a>', 'ggVG', {noremap = true, silent = true})
vim.keymap.set('n', 'Y', 'y$')


vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<A-d>", "<C-d>zz")
vim.keymap.set("n", "<A-u>", "<C-u>zz")


vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- L and H
vim.keymap.set({"n", "v", "x", "o"}, 'H', '_')
vim.keymap.set({"n", "v", "x", "o"}, 'L', '$')

-- hop
vim.keymap.set('n', 's', ':HopChar2<CR>')

-- JKL;
-- vim.keymap.set({"n", "v", "x", "o"}, "j", "h")
-- vim.keymap.set({"n", "v", "x", "o"}, "k", "j")
-- vim.keymap.set({"n", "v", "x", "o"}, "l", "k")
-- vim.keymap.set({"n", "v", "x", "o"}, ";", "l")
-- vim.keymap.set({"n", "v", "x", "o"}, ";", "h")

-- unmap J, K
vim.keymap.set("n", "J", "jk")
vim.keymap.set("n", "K", "jk")



-- ------- My remaps END ---------


-- vim.keymap.set("n", "<leader>pp", '"+p', { silent = true })

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- vim.keymap.set("n", "J", "mzJ`z")

-- No clipboard override
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


