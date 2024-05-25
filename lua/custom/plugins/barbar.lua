return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = function()
      local barbar = require 'barbar'
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }
      barbar.setup {
        animation = true,
        clickable = true,
      }

      map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
      map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
      map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
    end,
  },
}
