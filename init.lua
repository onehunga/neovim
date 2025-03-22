vim.g.mapleader = " "
vim.loader.enable()

require("config.opts")
require("config.lazy")

require("lazy").setup("plugins")
require("config.binds")

vim.cmd([[ colorscheme gruvbox-material ]])

if vim.g.neovide then
	vim.o.guifont = "CaskaydiaCove Nerd Font Mono:h16" -- text below applies for VimScript
	vim.opt.linespace = 0
end
