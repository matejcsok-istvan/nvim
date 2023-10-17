require("custom.remap")
require("custom.lazy")
require("custom.config")
require("custom.plugins")

local vim = vim

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- use system clipboard for `put` and `yank`
vim.o.clipboard = "unnamedplus"

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- set relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.updatetime = 50

