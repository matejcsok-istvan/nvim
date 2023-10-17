local vim = vim
vim.g.mapleader = " "
vim.keymap.set("n", "<C-x>d", vim.cmd.Ex)
vim.keymap.set("n", "<C-x><C-s>", ":wa | Prettier <CR>")
vim.keymap.set("n", "<C-x>s", ":source %<CR>")


vim.keymap.set("n", "<C-x>g", ":Neogit cwd=%:p:h<CR>")
vim.keymap.set("n", "<leader>x", ":w | bd<CR>")

-- add a keybinding to set relative line numbers to normal
vim.keymap.set("n", "<leader>rn", function()
	-- get the current relative number state
	local rel_num = vim.wo.relativenumber
  vim.wo.number = true
  vim.wo.relativenumber = not rel_num
end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
