-- lazy.nvim spec
local M = {
  'nvim-neorg/neorg',
  ft = 'norg',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-treesitter/nvim-treesitter-textobjects',
    'nvim-cmp',
    'nvim-lua/plenary.nvim',
    'folke/zen-mode.nvim',
    'benlubas/neorg-conceal-wrap',
    'opipoy/neorg-colors',
  },
  build = ':Neorg sync-parsers',
  cmd = 'Neorg',
}

local modules = {
  ['external.conceal-wrap'] = {},
  ['external.neorg-colors'] = {},
  ['core.defaults'] = {},
  ['core.completion'] = { config = { engine = 'nvim-cmp', name = '[Norg]' } },
  ['core.integrations.nvim-cmp'] = {},
  ['core.presenter'] = {
    config = {
      zen_mode = 'zen-mode',
    },
  },
  ['core.concealer'] = {
    config = {
      icon_preset = 'varied',
      icons = {
        delimiter = {
          horizontal_line = {
            highlight = '@neorg.delimiters.horizontal_line',
          },
        },

        code_block = {
          -- If true will only dim the content of the code block (without the
          -- `@code` and `@end` lines), not the entirety of the code block itself.
          content_only = true,

          -- The width to use for code block backgrounds.
          --
          -- When set to `fullwidth` (the default), will create a background
          -- that spans the width of the buffer.
          --
          -- When set to `content`, will only span as far as the longest line
          -- within the code block.
          width = 'content',

          -- Additional padding to apply to either the left or the right. Making
          -- these values negative is considered undefined behaviour (it is
          -- likely to work, but it's not officially supported).
          padding = {
            left = 1,
            right = 1,
          },

          -- If `true` will conceal (hide) the `@code` and `@end` portion of the code
          -- block.
          conceal = true,

          nodes = { 'ranged_verbatim_tag' },
          highlight = 'CursorLine',
          -- render = module.public.icon_renderers.render_code_block,
          insert_enabled = true,
        },
      },
    },
  },
  ['core.keybinds'] = {
    -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
    config = {
      default_keybinds = true,
      neorg_leader = '<Leader><Leader>',
    },
  },
  ['core.dirman'] = {
    config = {
      workspaces = {
        Notes = '~/Nextcloud/Notes/',
      },
    },
  },
}
M.opts = {
  load = modules,
}
M.lazy = false
return M
