return {
  'sainnhe/edge',
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.edge_transparent_background = 2
    vim.g.edge_style = 'neon'
    vim.g.edge_enable_italic = true
  end,
}
