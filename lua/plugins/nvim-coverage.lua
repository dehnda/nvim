-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  {
    "andythigpen/nvim-coverage",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      local Path = require("plenary.path")
      require("coverage").setup()
      -- return {
      --   default_params = { -- Default module parameters with which `neovim.json` will be created.
      --     cmake = {
      --       cmd = "cmake", -- CMake executable to use, can be changed using `:Task set_module_param cmake cmd`.
      --       build_dir = tostring(Path:new("{cwd}", "conan-build", "Debug")), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values. Could be a function that return the path to the build directory.
      --       build_type = "Debug", -- Build type, can be changed using `:Task set_module_param cmake build_type`.
      --       dap_name = "lldb", -- DAP configuration name from `require('dap').configurations`. If there is no such configuration, a new one with this name as `type` will be created.
      --       args = { -- Task default arguments.
      --         --cmake --no-warn-unused-cli -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE -DCMAKE_BUILD_TYPE:STRING=Debug -DCMAKE_C_COMPILER:FILEPATH=/usr/bin/clang
      --         -- -DCMAKE_CXX_COMPILER:FILEPATH=/usr/bin/clang++ -S/home/daniel/projects/3dstation -B/home/daniel/projects/3dstation/conan-build/Debug -G Ninja
      --         configure = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1", "-G", "Ninja" },
      --       },
      --     },
      --   },
      --   save_before_run = true, -- If true, all files will be saved before executing a task.
      --   params_file = "neovim.json", -- JSON file to store module and task parameters.
      --   quickfix = {
      --     pos = "botright", -- Default quickfix position.
      --     height = 12, -- Default height.
      --   },
      --   dap_open_command = function()
      --     return false -- require("dap").repl.open()
      --   end, -- Command to run after starting DAP session. You can set it to `false` if you don't want to open anything or `require('dapui').open` if you are using https://github.com/rcarriga/nvim-dap-ui
      -- }
    end,
  },
}
