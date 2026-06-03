return {
  -- vimコマンドでファイル操作できるファイラー（LazyVimにはない）
  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {},
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
}
