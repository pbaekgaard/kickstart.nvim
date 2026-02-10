return {
  "stevearc/overseer.nvim",
  opts = {
    task_list = {
      direction = "bottom",
      min_height = 25,
      max_height = 25,
    },
  },
  config = function(_, opts)
    require("overseer").setup(opts)
    require("overseer").register_template({
      name = "cargo run (3x scale)",
      condition = {
        filetype = "rust",
      },
      builder = function(params)
        return {
          cmd = { "cargo", "run", "--", "--scale", "3"},
        }
      end,
    })
  end,
  keys = {
    {
      "<leader>or",
      "<cmd>OverseerRun<CR>",
      desc = "Overseer: Run task",
    },
    {
      "<leader>ot",
      "<cmd>OverseerToggle<CR>",
      desc = "Overseer: Toggle",
    },
  },
}
