return {
  "declancm/cinnamon.nvim",
  config = function()
    local cin = require("cinnamon")

    cin.setup( {
      keymaps = {
        basic = true,
        extra = true
      },
      options = {
        max_delta = {
          time = 700
        }
      }
    })

    vim.keymap.set("n", ">", function() cin.scroll("15j15<C-e>") end)
    vim.keymap.set("n", "<", function() cin.scroll("15k15<C-y>") end)
  end,
}
