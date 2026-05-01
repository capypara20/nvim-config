return {
  {
    "vim-denops/denops.vim",
    lazy = false,
    init = function()
      vim.g["denops#deno"] = vim.fn.expand("~/.deno/bin/deno")
    end,
  },
  {
    "Shougo/ddx.vim",
    dependencies = { "vim-denops/denops.vim" },
    lazy = false,
  },
}
