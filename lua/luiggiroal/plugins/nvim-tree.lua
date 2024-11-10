return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker= {
            enable = false,
          },
        },
      },
      filters = {
        git_ignored = false,
        custom = { ".DS_Store" },
      },
      -- git = {
      --   ignore = false,
      -- },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
  end
}

-- ORIGINAL
--
-- return {
--   "nvim-tree/nvim-tree.lua",
--   -- dependencies = "nvim-tree/nvim-web-devicons",
--   config = function()
--     local nvimtree = require("nvim-tree")
--
--     -- Disable netrw (Neovim's native file explorer)
--     vim.g.loaded_netrw = 1
--     vim.g.loaded_netrwPlugin = 1
--
--     nvimtree.setup({
--       disable_netrw = true,
--       hijack_netrw = true,
--       renderer = {
--         highlight_modified = "all",
--         icons = {
--           glyphs = {
--             default = "",
--           },
--           show = {
--             modified = true,
--           },
--         },
--         root_folder_label = ":~",
--       },
--       hijack_cursor = true,
--       sync_root_with_cwd = true,
--       diagnostics = {
--         enable = true,
--       },
--       filters = {
--         dotfiles = true,
--         custom = { ".DS_Store" },
--       },
--       update_focused_file = {
--         enable = true,
--         update_root = {
--           -- enable = true,
--           ignore_list = {},
--         },
--       },
--       git = {
--         show_on_dirs = false,
--         timeout = 500,
--       },
--       modified = {
--         enable = true,
--         show_on_dirs = false,
--       },
--       -- disable window_picker for
--       -- explorer to work well with
--       -- window splits
--       actions = {
--         open_file = {
--           window_picker = {
--             enable = false,
--           },
--         },
--       },
--     })
--
--     vim.cmd([[highlight NvimTreeModifiedFile guifg=#ff8800]])
--
--     -- set keymaps
--     local keymap = vim.keymap -- for conciseness
--
--     keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
--     keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
--     keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
--     keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
--   end,
-- }
