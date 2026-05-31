return {
  -- LazyVimのmason-lspconfigにサーバーを追加
  {
    "mason-org/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "pyright",       -- Python
        "sqlls",         -- SQL
        "rust_analyzer", -- Rust
        "powershell_es", -- PowerShell
        "jdtls",         -- Java
      })
    end,
  },
}
