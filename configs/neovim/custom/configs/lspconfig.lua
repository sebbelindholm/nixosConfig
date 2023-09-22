local on_attatch = require("plugins.configs.lspconfigs").on_attatch
local capabilities = require("plugins.configs.lspconfigs").capabilities

local lspconfigs = require "lspconfigs"

lspconfigs.clangd.setup({
  on_attatch = on_attatch,
  capabilities = capabilities,
  filetype = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
          root_pattern(
    '.clangd',
    '.clang-tidy',
    '.clang-format',
    'compile_commands.json',
    'compile_flags.txt',
    'configure.ac',
    '.git'
  )
  single_file_support = true
})
