return {
  -- conform: LazyVimのデフォルトにフォーマッターを追加
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "black" },
        sql = { "sql_formatter" },
        java = { "google_java_format" },
        -- lua(stylua)とrust(rustfmt)はLazyVimが設定済み
      },
    },
  },
}
