-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- ノーマルモードに入ったら（Escを含む）IMEを強制的にOFFにする
-- OSごとに方法を切り替える: Windows = zenhan(.exe) / Linux = fcitx5-remote
local function setup_ime_off()
  local ime_off

  if vim.fn.has("win32") == 1 then
    -- Windows: bin/ に置いた zenhan を呼ぶ（64/32bitを自動判定）
    local exe = vim.fn.has("win64") == 1 and "zenhan-64.exe" or "zenhan-32.exe"
    local zenhan = vim.fn.stdpath("config") .. "/bin/" .. exe
    if vim.fn.executable(zenhan) == 1 then
      -- 引数 0 = IMEオフ（半角英数）
      ime_off = function() vim.fn.jobstart({ zenhan, "0" }) end
    end
  elseif vim.fn.executable("fcitx5-remote") == 1 then
    -- Linux: fcitx5 の入力状態をリセットしてオフにする
    ime_off = function() vim.fn.system("fcitx5-remote -c") end
  end

  -- 使えるツールが無ければ何もしない
  if not ime_off then
    return
  end

  -- ノーマルモードに切り替わった瞬間（Escやjjでの離脱も含む）にIMEをOFF
  vim.api.nvim_create_autocmd("ModeChanged", {
    pattern = "*:n",
    callback = ime_off,
  })
  -- コマンドライン入力を抜けたときもOFF
  vim.api.nvim_create_autocmd("CmdlineLeave", {
    callback = ime_off,
  })
end

setup_ime_off()

-- 背景を透過させる（カラースキーム変更後も維持）
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.cmd([[
      highlight Normal   guibg=None ctermbg=None
      highlight NonText  guibg=None ctermbg=None
      highlight NormalNC guibg=None
      highlight NormalSB guibg=None
    ]])
  end,
})
