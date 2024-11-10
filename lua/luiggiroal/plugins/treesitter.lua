return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- ensure these language parsers are installed
      ensure_installed = {
        "json",
        "javascript",
        "java",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "latex",
        "lua",
        "python",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
        "cpp",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          -- init_selection = "gnn", -- (Default) In normal mode, start incremental selection.
          node_incremental = "gnn", -- In visual mode, increment to the upper named parent.
          scope_incremental = "gnk", -- In visual mode, increment to the upper scope
          node_decremental = "gnm", -- In visual mode, decrement to the previous named node.
        },
        -- keymaps = {
        --   init_selection = "<C-space>",
        --   node_incremental = "<C-space>",
        --   scope_incremental = false,
        --   node_decremental = "<bs>",
        -- },
      },
    })
  end,
}
