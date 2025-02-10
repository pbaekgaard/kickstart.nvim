return {
  'stevearc/overseer.nvim',
  opts = {},
  config = function()
    require('overseer').setup {
      templates = { 'builtin', 'user.cpp_build', 'user.run_script', 'user.build_and_run_cpp' },
    }
  end,
  keys = {
    { '<leader>ow', '<cmd>OverseerToggle<cr>', desc = 'Task list' },
    { '<leader>oo', '<cmd>OverseerRun<cr>', desc = 'Run task' },
    { '<leader>oq', '<cmd>OverseerQuickAction<cr>', desc = 'Action recent task' },
    { '<leader>oi', '<cmd>OverseerInfo<cr>', desc = 'Overseer Info' },
    { '<leader>ob', '<cmd>OverseerBuild<cr>', desc = 'Task builder' },
    { '<leader>ot', '<cmd>OverseerTaskAction<cr>', desc = 'Task action' },
    { '<leader>oc', '<cmd>OverseerClearCache<cr>', desc = 'Clear cache' },
  },
}
