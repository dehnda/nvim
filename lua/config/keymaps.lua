-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })
vim.keymap.set("n", "<leader>c", ":nohl<CR>", { noremap = true, silent = true, desc = "Clear search" })

-- CPP
vim.keymap.set(
  "n",
  "<leader>o",
  ":ClangdSwitchSourceHeader<CR>",
  { noremap = true, silent = true, desc = "Switch src/hpp" }
)
-- CMake
vim.keymap.set(
  "n",
  "<F7>",
  ":Task start cmake build_all<CR>",
  { noremap = true, silent = true, desc = "Cmake build all" }
)
vim.keymap.set("n", "<F8>", ":Task start cmake build<CR>", { noremap = true, silent = true, desc = "Cmake build" })
vim.keymap.set("n", "<F9>", ":Task start cmake clean<CR>", { noremap = true, silent = true, desc = "Cmake clean" })
vim.keymap.set(
  "n",
  "<F4>",
  ":Task set_module_param cmake target<CR>",
  { noremap = true, silent = true, desc = "Cmake target" }
)

vim.keymap.set(
  "n",
  "<F4>",
  ":Task set_module_param cmake target<CR>",
  { noremap = true, silent = true, desc = "Cmake debug" }
)
vim.keymap.set("n", "<F5>", ":Task start cmake debug<CR>", { noremap = true, silent = true, desc = "Cmake debug" })
vim.keymap.set("n", "<F6>", ":Task start cmake run<CR>", { noremap = true, silent = true, desc = "Cmake run" })
