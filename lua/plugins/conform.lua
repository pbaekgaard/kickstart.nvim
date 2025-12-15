return { -- Autoformat
  "stevearc/conform.nvim",
  lazy = false,
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "[F]ormat buffer",
    },
  },
  opts = {
    notify_on_error = true,
    format_on_save = false,
    formatters = {
      prettier = {
        prepend_args = { '--config', '/home/pbk/.config/nvim/formatterconfigs/prettier/.prettierrc.json' },
      },
    },
    formatters_by_ft = {
      -- Conform can also run multiple formatters sequentially
      ["_"] = { "trim_whitespace" },
      tex = { "tex-fmt" },
      markdown = {
        "prettier",
      },
      c = {
        "clang-format"
      },
      python = {
        "isort",
        "black"
      },
      javascript = {
        "prettier",
      },
      typescript = {
        "prettier",
      },
      jsx = {
        "prettier",
      },
    },
  },
}
