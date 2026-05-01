-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.autoindent = true
opt.wrap = false -- 長い行を折り返さない
opt.clipboard = "unnamedplus" --クリップボードは共有
opt.swapfile = false -- スワップファイルは作らない
keymap = { preset = "super-tab" }
