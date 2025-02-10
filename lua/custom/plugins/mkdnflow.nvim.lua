return {
  'jakewvincent/mkdnflow.nvim',
  lazy = true,
  config = function()
    require('mkdnflow').setup {
      -- Config goes here; leave blank for defaults
      mappings = {
        MkdnToggleToDo = { { 'n', 'v' }, '<C-t>' },
      },
    }
  end,
}
