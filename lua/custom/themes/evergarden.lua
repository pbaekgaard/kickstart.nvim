return {
  'everviolet/nvim',
  name = 'evergarden',
  priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
  opts = {
    theme = {
      variant = 'fall', -- 'winter'|'fall'|'spring'|'summer'
      accent = 'green',
    },
    editor = {
      transparent_background = true,
      -- sign = { color = 'none' },
      float = {
        color = 'mantle',
        solid_border = true,
      },
      completion = {
        color = 'surface0',
      },
    },
  },
}
