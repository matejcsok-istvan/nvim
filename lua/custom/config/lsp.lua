local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
  vim.keymap.set("n", "<C-c>ca", function() vim.lsp.buf.code_action() end)
end)

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {"tsserver", "eslint"},
  handlers = {
    lsp_zero.default_setup,
  },
})
