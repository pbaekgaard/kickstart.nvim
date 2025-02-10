return {
  name = 'g++ build and run',
  builder = function()
    -- Full path to current file (see :help expand())
    local file = vim.fn.expand '%:p'
    local outfile = vim.fn.expand '%:p:r' .. '.out'
    return {
      cmd = { outfile },
      strategy = 'toggleterm',
      components = {
        -- Note that since we're using the "raw task parameters" format for the dependency,
        -- we don't have to define a separate build task.
        { 'dependencies', task_names = { { cmd = 'g++', args = { file, '-o', outfile } } } },
        { 'on_output_quickfix', open = false },
        'default',
      },
    }
  end,
  condition = {
    filetype = { 'cpp' },
  },
}
