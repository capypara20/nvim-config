-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ※ LazyVimが提供するキーマップ（gd/gr/K/<leader>ff等）は重複するので書かない

local map = vim.keymap.set

-- jjでEscapeに
map("i", "jj", "<Esc>", { desc = "ノーマルモードへ" })

-- バッファ切り替え（LazyVimデフォルトの<S-h>/<S-l>の代わりにTab）
map("n", "<Tab>",   "<cmd>BufferLineCycleNext<cr>", { desc = "次のバッファ" })
map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "前のバッファ" })

-- Oil ファイラー
map("n", "-", "<cmd>Oil<cr>", { desc = "Oil ファイラーを開く" })

-- ToggleTerm
map("n", "<C-\\>", "<cmd>ToggleTerm<cr>",  { desc = "ターミナルを開く" })
map("t", "<Esc><Esc>", "<C-\\><C-n>",      { desc = "ターミナルからノーマルモードへ" })

-- Neogit
map("n", "<leader>gg", "<cmd>Neogit<cr>", { desc = "Gitパネルを開く" })
