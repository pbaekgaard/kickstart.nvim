-- return {
--   'Luxed/ayu-vim',
--   config = function()
--     vim.g.ayu_italic_comment = 1
--     vim.g.ayu_sign_contrast = 1
--     vim.g.ayu_extended_palette = 1
--   end
-- }

return {
  'Shatur/neovim-ayu',
  config = function()
    require('ayu').setup {
      overrides = {
        Normal = { bg = 'None' },
        NormalFloat = { bg = 'none' },
        ColorColumn = { bg = 'None' },
        SignColumn = { bg = 'None' },
        Folded = { bg = 'None' },
        FoldColumn = { bg = 'None' },
        CursorLine = { bg = 'None' },
        CursorLineNr = { bg = 'None' },
        CursorColumn = { bg = 'None' },
        VertSplit = { bg = 'None' },
        LineNr = { bg = 'None', fg = '#636a72' },
      },
    }
  end,
}
