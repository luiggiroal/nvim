local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require("lazy").setup("luiggiroal.plugins", {
  -- Lazy automatically checks for plugin updates.
  -- This is needed for including in lualine whether there are
  -- plugin updates available or not.
  checker = {
    enabled = true,
    notify = false,
  },
  -- Disable the message displayed everytime a plugin is saved.
  change_detection = {
    notify = false,
  },
})
