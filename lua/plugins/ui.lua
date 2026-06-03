return {
  -- noice: LazyVimのデフォルトにlsp_doc_borderを追加
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },

  -- which-key: 右下に表示
  {
    "folke/which-key.nvim",
    opts = {
      win = {
        col = math.huge,
        row = math.huge,
      },
    },
  },

  -- コードブロックをインデントに沿って色付け
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      chunk = {
        style = "#806d9c",
        priority = 10,
        use_treesitter = false,
      },
    },
  },
}
