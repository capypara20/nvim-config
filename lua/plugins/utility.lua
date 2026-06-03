return {
  -- ターミナル（LazyVimにはない）
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
  },

  -- ウィンドウサイズ変更（LazyVimにはない）
  {
    "simeji/winresizer",
  },

  -- 囲み文字操作（LazyVimにはない）
  {
    "kylechui/nvim-surround",
    version = "^4.0.0",
    event = "VeryLazy",
    config = true,
  },

  -- 検索結果カウント表示（LazyVimにはない）
  {
    "kevinhwang91/nvim-hlslens",
    config = true,
  },

  -- Markdownプレビュー（LazyVimにはない）
  {
    "toppair/peek.nvim",
    event = "VeryLazy",
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup()
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },

  -- バイナリエディター（LazyVimにはない）
  {
    "RaafatTurki/hex.nvim",
    config = function()
      require("hex").setup()
    end,
  },

  -- blink.cmpのキーマップをsuper-tabに変更（LazyVimのデフォルトを上書き）
  {
    "saghen/blink.cmp",
    opts = {
      keymap = { preset = "super-tab" },
    },
  },
}
