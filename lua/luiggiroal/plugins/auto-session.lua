return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore = false,
      suppressed_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
      -- Dashboard is bypassed when a session is saved.
      bypass_save_filetypes = { 'alpha', 'dashboard' },
      
      -- OLDER CONFIGURATION NAMES:
      -- auto_restore_enabled = false,
      -- auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore last session for cwd" }) -- restore last workspace session for current directory
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
    keymap.set("n", "<leader>wf", "<cmd>SessionSearch<CR>", { desc = "Find a session to load" }) -- Open a session picker. Uses Telescope if installed.
    keymap.set("n", "<leader>wd", "<cmd>Autosession delete<CR>", { desc = "Choose a session to delete" }) -- Open a session picker. Uses Telescope if installed.
  end,
}
