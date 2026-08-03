-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.smartindent = true
vim.opt.cindent = false

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undodir = "/tmp/" .. os.getenv("USER") .. "/vim/undodir"
vim.opt.undofile = true
vim.opt.signcolumn = "yes"
vim.opt.autowrite = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 7
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.opt.foldenable = true
vim.opt.foldmethod = "indent"

vim.opt.splitright = true

vim.opt.mouse = "a"

vim.opt.list = true
vim.opt.listchars = {
	tab = "» ",
	trail = "°",
	nbsp = "⊕",
	lead = "·",
}

vim.opt.spelllang = "de"
vim.opt.spell = false

vim.opt.cpoptions =  "aABceFsJ"

-- local ft = require("Comment.ft")
-- ft.text = "#%s"

-- listen to godot if using
--local projectfile = vim.fn.getcwd() .. "/project.godot"
--if projectfile then
--	vim.fn.serverstart "./godothost"
--	vim.lsp.enable("gdscript")
--end





