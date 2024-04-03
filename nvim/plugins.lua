-- Setup Lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- Plugins
local pluginDetails = {
   -- GitHub Copilot
   "github/copilot.vim",

   -- Dracula colour scheme
   { "dracula/vim", name = "dracula" },

   -- LSP Zero: LSP config plugin
   "VonHeikemen/lsp-zero.nvim",

   -- Mason: LSP installer
   "williamboman/mason.nvim",
   "williamboman/mason-lspconfig.nvim",

   -- LSP-Config: LSP config settings
   "neovim/nvim-lspconfig",

   -- Nvim-cmp: Code completion
   "hrsh7th/nvim-cmp",
   "hrsh7th/cmp-nvim-lsp",
   "L3MON4D3/LuaSnip",

   -- Telescope: File search tool
   {
	"nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" }
   }
}
require("lazy").setup(pluginDetails)
