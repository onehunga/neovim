vim.g.mapleader = " "
vim.loader.enable()

require("config.lazy")
require("config.keybinds")
require("config.opts")

vim.cmd([[ colorscheme onedark ]])
vim.cmd([[ set laststatus=3 ]])
