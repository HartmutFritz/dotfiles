-- My own remaps

vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', 'j', "v:count ? 'j' : 'gj'", {expr = true, noremap = true})
vim.api.nvim_set_keymap('n', 'k', "v:count ? 'k' : 'gk'", {expr = true, noremap = true})

vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<A-s>', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':wq<CR>')
vim.keymap.set('n', '<leader>t', ':q!<CR>')

-- L and H
vim.keymap.set('n', 'H', '_')
vim.keymap.set('x', 'H', '_')
vim.keymap.set('o', 'H', '_')
vim.keymap.set('v', 'H', '_')
vim.keymap.set('n', 'L', '$')
vim.keymap.set('x', 'L', '$')
vim.keymap.set('o', 'L', '$')
vim.keymap.set('v', 'L', '$')


-- select all, Y
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', {noremap = true, silent = true})
vim.keymap.set('n', 'Y', 'y$')


vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<A-d>", "<C-d>zz")
vim.keymap.set("n", "<A-u>", "<C-u>zz")


vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- unmap J, K, q
vim.keymap.set("n", "J", "5j")
vim.keymap.set("n", "K", "5k")
-- vim.keymap.set("n", "q", "h")

-- vim.api.nvim_set_keymap('n', "n", "b", {noremap = true})
-- vim.api.nvim_set_keymap('n', "m", "w", {noremap = true})
-- vim.api.nvim_set_keymap('n', "w", "n", {noremap = true})

-- hop
vim.api.nvim_set_keymap('n', 's', ':HopChar2<CR>', {noremap = true, silent = true})

-- JKL;

-- vim.keymap.set({"n", "v", "x", "o"}, "j", "h")
-- vim.keymap.set({"n", "v", "x", "o"}, "k", "j")
-- vim.keymap.set({"n", "v", "x", "o"}, "l", "k")
-- vim.keymap.set({"n", "v", "x", "o"}, ";", "l")


-- ------- My remaps END ---------




-- vim.keymap.set("n", "<leader>pp", '"+p', { silent = true })

-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- vim.keymap.set("n", "J", "mzJ`z")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--
-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)
--
-- next greatest remap ever : asbjornHaland
-- vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
--
-- vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
--
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
--
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
--
-- vim.keymap.set(
--     "n",
--     "<leader>ee",
--     "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
-- )
--
-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");


