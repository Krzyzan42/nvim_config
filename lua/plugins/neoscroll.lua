return {
  "declancm/cinnamon.nvim",
  config = function()
    local cin = require("cinnamon")
    cin.setup()
    vim.keymap.set("n", "J", function() cin.scroll("25jzz") end)
    vim.keymap.set("n", "K", function() cin.scroll("25kzz") end)
  end,
}
