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
local pluginDetails = {}

local function add_plugin(plugin)
   table.insert(pluginDetails, require("plugins." .. plugin))
end

-- Dracula colour scheme
add_plugin("dracula")

-- Fluoromachine colour scheme
add_plugin("fluoromachine")

-- Nvim-tree: File explorer
add_plugin("nvim-tree")

-- Neogit: Git integration
add_plugin("neogit")

-- Fzf: File searching
add_plugin("fzf")

add_plugin("nvim-treesitter")

require("lazy").setup(pluginDetails)
