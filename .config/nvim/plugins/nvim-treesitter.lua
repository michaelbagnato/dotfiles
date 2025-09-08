vim.filetype.add({
   pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",

   config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
         ensure_installed = { "hyprlang", "lua", "typescript", "go", "dart" },
         highlight = { enable = true },
         indent = { enable = true },
      })
   end,
}
