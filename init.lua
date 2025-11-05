-- bootstrap lazy.nvim, LazyVim and your plugins
vim.o.winborder = "rounded"
require("config.lazy")

-- Enable spellchecking and set language to Danish (and optionally English)
vim.opt_local.spell = false
vim.opt_local.spelllang = { "da", "en" }
