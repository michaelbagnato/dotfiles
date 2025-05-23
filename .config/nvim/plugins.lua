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

-- GitHub Copilot
add_plugin("copilot")

-- Dracula colour scheme
add_plugin("dracula")

-- Telescope: File search tool
add_plugin("telescope")

-- Nvim-tree: File explorer
add_plugin("nvim-tree")

-- Neogit: Git integration
add_plugin("neogit")

add_plugin("nvim-treesitter")

require("lazy").setup(pluginDetails)
