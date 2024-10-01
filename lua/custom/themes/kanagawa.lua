return {
  'rebelot/kanagawa.nvim',
  config = function()
    local set = require('kanagawa').setup {
      transparent = true,
      theme = 'wave',
      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = 'none' },
          FloatBorder = { bg = 'none' },
          FloatTitle = { bg = 'none' },
          StatusLineNC = { bg = 'none' },
        }
      end,
    }
  end,
}
