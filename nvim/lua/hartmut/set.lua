-- user systemclipboard
vim.o.clipboard = "unnamedplus"

-- text wrapp
vim.o.linebreak = true
vim.o.autoindent = true  -- Indents word-wrapped lines as much as the 'parent' line
vim.o.breakindent = true  -- Ensures word-wrap does not split words

-- When editing a file, always jump to the last known cursor position.
vim.cmd([[
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
]])

-- only display the document name in the statusline
vim.o.statusline = "%f"

-- vim.cmd("colorscheme onedark")
-- vim.o.ignorecase = true
-- vim.o.wildmode = "longest,list"
-- vim.cmd([[syntax on]])
-- vim.o.ttyfast = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- ---------------------------------

-- makes the insertcursor to a block
-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
-- vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 7
-- vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"

