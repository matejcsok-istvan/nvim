local hop = require('hop')
hop.setup({})

vim.keymap.set("n", "<C-c>j", vim.cmd.HopWord)
