vim.g.mapleader = " "
vim.loader.enable()

require("config.opts")
require("config.binds")
require("config.lazy")

require("lazy").setup("plugins")

vim.cmd([[ colorscheme gruvbox-material ]])

if vim.g.neovide then
	vim.o.guifont = "Agave Nerd Font:h16" -- text below applies for VimScript
	vim.opt.linespace = 0
	vim.g.transparency = 0.9
	vim.g.neovide_transparency = 0.8
end
