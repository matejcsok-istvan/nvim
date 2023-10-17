require("toggleterm").setup({
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  hide_numbers = true, -- hide the number column in toggleterm buffers
  start_in_insert = true,
  -- This field is only relevant if direction is set to 'float'
})

-- Require the toggleterm library
local Terminal = require('toggleterm.terminal').Terminal

-- Configure the terminals
local vertical_term = Terminal:new({
  direction = 'vertical',
  hidden = true,
  open_mapping = [[<leader>v]],
})

local horizontal_term = Terminal:new({
  direction = 'horizontal',
  hidden = true,
  open_mapping = [[<leader>h]],
})

local float_term = Terminal:new({
  direction = 'float',
  hidden = true,
  open_mapping = [[<leader>i]],
})

-- Functions to toggle each terminal type
_G.toggle_vertical_term = function()
  vertical_term:toggle()
end

_G.toggle_horizontal_term=function()
  horizontal_term:toggle()
end

_G.toggle_float_term=function()
  float_term:toggle()
end

-- Map the leader key combinations
vim.api.nvim_set_keymap('n', '<leader>v', '<cmd>lua toggle_vertical_term()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', '<cmd>lua toggle_horizontal_term()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>i', '<cmd>lua toggle_float_term()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<leader>v', '<cmd>lua toggle_vertical_term()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<leader>h', '<cmd>lua toggle_horizontal_term()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<leader>i', '<cmd>lua toggle_float_term()<CR>', { noremap = true, silent = true })
