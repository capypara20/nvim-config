return {
  -- gitsignsはLazyVimに含まれているため不要
  -- LazyVimにないNeogit + Diffviewを追加
  {
    "NeogitOrg/neogit",
    cmd = "Neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    opts = {},
  },
}
