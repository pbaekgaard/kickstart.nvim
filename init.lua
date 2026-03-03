-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.o.winborder = "rounded"
vim.opt.guicursor = ""
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
