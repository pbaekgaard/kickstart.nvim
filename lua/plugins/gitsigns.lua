-- Override LazyVim's default gitsigns blame keymaps:
-- drop the "h" level so blame lives directly under <leader>g.
return {
  {
    "lewis6991/gitsigns.nvim",
    opts = function(_, opts)
      -- show a virtual-text git blame for the current line, updated as the
      -- cursor moves (after a short delay, like a hover)
      opts.current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- "eol" | "overlay" | "right_align"
        delay = 300,
        ignore_whitespace = false,
      }
      opts.current_line_blame_formatter = "    <author>, <author_time:%Y-%m-%d> - <summary>"

      local orig_on_attach = opts.on_attach
      opts.on_attach = function(buffer)
        if orig_on_attach then
          orig_on_attach(buffer)
        end

        local gs = package.loaded.gitsigns

        vim.keymap.del("n", "<leader>ghb", { buffer = buffer })
        vim.keymap.del("n", "<leader>ghB", { buffer = buffer })

        vim.keymap.set("n", "<leader>gb", function()
          gs.blame_line({ full = true })
        end, { buffer = buffer, desc = "Blame Line", silent = true })

        vim.keymap.set("n", "<leader>gB", function()
          gs.blame()
        end, { buffer = buffer, desc = "Blame Buffer", silent = true })

        vim.keymap.set("n", "<leader>gl", function()
          gs.toggle_current_line_blame()
        end, { buffer = buffer, desc = "Toggle Current Line Blame", silent = true })
      end
    end,
  },
}
