return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local configs = require('nvim-treesitter.configs')
    configs.setup({
      ensure_installed = { "lua", "c", "cpp", "python", "bitbake" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
