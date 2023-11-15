-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- add vim-doge
  "kkoomen/vim-doge",
  event = "BufRead",
  config = function()
    vim.cmd([[call doge#install()]])
  end,
  -- keys = {
  --   { "<leader><F12>", "<cmd>doge-generate<cr>", desc = "create doxygen" },
  --   -- { "<leader>/", Util.telescope("live_grep"), desc = "Grep (root dir)" },
  --   -- { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
  --   -- { "<leader><space>", Util.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
  -- },
}
