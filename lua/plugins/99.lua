return {
  "ThePrimeagen/99",
  -- enabled = false,
  config = function()
    local _99 = require("99")

    -- For logging that is to a file if you wish to trace through requests
    -- for reporting bugs, i would not rely on this, but instead the provided
    -- logging mechanisms within 99.  This is for more debugging purposes
    local cwd = vim.uv.cwd()
    local basename = vim.fs.basename(cwd)
    _99.setup({
      model = "google/antigravity-claude-sonnet-4-5",
      -- model = "google/antigravity-claude-sonnet-4-5",
      -- model = "google/antigravity-claude-sonnet-4-5-thinking",
      -- model = "google/antigravity-gemini-3-flash",
      -- model = "google/antigravity-gemini-3-pro",
      logger = {
        level = _99.DEBUG,
        path = "/tmp/" .. basename .. ".99.debug",
        print_on_error = true,
      },

      --- A new feature that is centered around tags
      completion = {
        --- Defaults to .cursor/rules
        -- I am going to disable these until i understand the
        -- problem better.  Inside of cursor rules there is also
        -- application rules, which means i need to apply these
        -- differently
        -- cursor_rules = "<custom path to cursor rules>"

        --- A list of folders where you have your own SKILL.md
        --- Expected format:
        --- /path/to/dir/<skill_name>/SKILL.md
        ---
        --- Example:
        --- Input Path:
        --- "scratch/custom_rules/"
        ---
        --- Output Rules:
        --- {path = "scratch/custom_rules/vim/SKILL.md", name = "vim"},
        --- ... the other rules in that dir ...
        ---
        custom_rules = {
          "scratch/custom_rules/",
        },

        --- What autocomplete do you use.  We currently only
        --- support cmp right now
        source = nil,
      },

      --- WARNING: if you change cwd then this is likely broken
      --- ill likely fix this in a later change
      ---
      --- md_files is a list of files to look for and auto add based on the location
      --- of the originating request.  That means if you are at /foo/bar/baz.lua
      --- the system will automagically look for:
      --- /foo/bar/AGENT.md
      --- /foo/AGENT.md
      --- assuming that /foo is project root (based on cwd)
      md_files = {
        "AGENT.md",
      },
    })

    -- Create your own short cuts for the different types of actions
    vim.keymap.set("v", "<leader>9v", function()
      _99.visual()
    end, { desc = "[9]9 [V]isual Prompt" })

    vim.keymap.set({"n", "v"}, "<leader>9s", function()
      _99.search()
    end, { desc = "[9]9 [S]earch" })

    --- if you have a request you dont want to make any changes, just cancel it
    vim.keymap.set({ "n", "v" }, "<leader>9c", function()
      _99.stop_all_requests()
    end, { desc = "[9]9 [C]ancel all requests" })
  end,
}
