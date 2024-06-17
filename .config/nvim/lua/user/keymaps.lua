vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<ESC>", ":nohlsearch<CR>")

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<leader>rn", ":IncRename ")

vim.keymap.set("n", "<leader>qab", ":%bd|e#|bd#<CR>")

