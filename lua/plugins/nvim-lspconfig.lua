return {
  "neovim/nvim-lspconfig",
  opts = {

    autoformat = false,
    diagnostics = {
      float = {
        border = "rounded",
      },
    },
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim"}
            }
          }
        }
      }
    }
  },
}
