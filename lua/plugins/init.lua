return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    {
      "stevearc/dressing.nvim",
      lazy = false,
      opts = {},
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "eslint-lsp",
        "gopls",
        "js-debug-adapter",
        "ts_ls",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "typescript",
        "javascript",
        "go",
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "configs.lint"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      require("leap").add_default_mappings(true)
    end,
  },
  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      require("todo-comments").setup()
    end,
  },
  { "sindrets/diffview.nvim", lazy = false },
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      require("leap").add_default_mappings(true)
    end,
  },
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    config = function()
      require("blame").setup {}
    end,
    opts = {
      date_format = "%d.%m.%Y",
      virtual_style = "left_align",
      focus_blame = true,
      merge_consecutive = false,
      max_summary_width = 30,
      colors = nil,
      blame_options = { "-w" },
      commit_detail_view = "vsplit",
      mappings = {
        commit_info = "i",
        stack_push = "<TAB>",
        stack_pop = "<BS>",
        show_commit = "<CR>",
        close = { "<esc>", "q" },
      },
    },
  },
  {
    "braxtons12/blame_line.nvim",
    lazy = false,
    config = function()
      require("blame_line").setup {}
    end,
  },
  --{
  --  "Exafunction/codeium.vim",
  --  lazy = false,
  --},
}
