-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

-- return {
--   "JoosepAlviste/nvim-ts-context-commentstring",
--   opts = {
--     enable_autocmd = false,
--     languages = {
--       cpp = "// %s",
--     },
--   },
-- }
--
-- return {
--   "stevearc/conform.nvim",
--   optional = true,
--   opts = {
--     ---@type table<string, conform.FiletypeFormatter>
--     formatters_by_ft = {
--       ["frag"] = { "clang_format" },
--       ["vert"] = { "clang_format" },
--     },
--   },
-- }
return {
  {
    "stevearc/conform.nvim",
    opts = function()
      ---@class ConformOpts
      return {
        -- LazyVim will use these options when formatting with the conform.nvim formatter
        format = {
          timeout_ms = 1000,
        },
        formatters_by_ft = {
          lua = { "stylua" },
          fish = { "fish_indent" },
          sh = { "shfmt" },
          python = { "isort", "black" },
          glsl = { "clang_format" },
          -- ["_"] = { "clang_format" }, -- if not, clang_format not work for .h file
        },
        -- LazyVim will merge the options you set here with builtin formatters.
        -- You can also define any custom formatters here.
        ---@type table<string,table>
        formatters = {
          injected = { options = { ignore_errors = true } },
          -- # Example of using dprint only when a dprint.json file is present
          -- dprint = {
          --   condition = function(ctx)
          --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
          --   end,
          -- },
          --
          -- # Example of using shfmt with extra args
          -- shfmt = {
          --   extra_args = { "-i", "2", "-ci" },
          -- },
          clang_format = { extra_args = { "--style=file" } },
        },
      }
    end,
  },
}
