-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- ノーマルモードに入ったら常にIMEをOFFにする
if vim.fn.executable("fcitx5-remote") == 1 then
  vim.api.nvim_create_autocmd("ModeChanged", {
    pattern = "*:n",
    callback = function()
      vim.fn.system("fcitx5-remote -c")
    end,
  })
  vim.api.nvim_create_autocmd("CmdlineLeave", {
    callback = function()
      vim.fn.system("fcitx5-remote -c")
    end,
  })
end

-- nvim起動しても背景は透過させる
vim.cmd([[
  highlight Normal guibg=None
  highlight NonText guibg=None
  highlight NonText ctermbg=None
  highlight Normal ctermbg=None
  highlight NormalNC guibg=None
  highlight NormalSB guibg=None
  highlight NvimTreeNormal guibg=None
  highlight NvimTreeNormalNC guibg=None
  highlight NvimTreeEndOfBuffer guibg=None
]])
