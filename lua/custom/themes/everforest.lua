return {
  'sainnhe/everforest',
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.everforest_enable_italic = true
    vim.g.everforest_transparent_background = 1
    vim.g.everforest_style = 'hard'
    vim.g.everforest_diagnostic_text_highlight = 1
    vim.g.everforest_diagnostic_line_highlight = 1
    vim.g.everforest_diagnostic_virtual_text = 'colored'
    vim.g.everforest_better_performance = 1
  end,
}
