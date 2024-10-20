vim.g.mapleader = " "
vim.loader.enable()

require("config.opts")
require("config.binds")
require("config.lazy")

require("lazy").setup("plugins")

vim.cmd([[ colorscheme catppuccin-mocha ]])
