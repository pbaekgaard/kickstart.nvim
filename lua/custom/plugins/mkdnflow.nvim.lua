return {
  'jakewvincent/mkdnflow.nvim',
  lazy = false,
  config = function()
    require('mkdnflow').setup {
      -- Config goes here; leave blank for defaults
      mappings = {
        MkdnToggleToDo = { { 'n', 'v' }, '<C-t>' },
      },
    }
  end,
}
