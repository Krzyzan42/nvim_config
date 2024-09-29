-- return {
--   "declancm/cinnamon.nvim",scro
--   config = function()
--     local cin = require("cinnamon")
--
--     cin.setup( {
--       keymaps = {
--         basic = true,
--         extra = true
--       },
--       options = {
--         max_delta = {
--           time = 700
--         }
--       }
--     })
--
--     vim.keymap.set("n", ">", function() cin.scroll("15j15<C-e>") end)
--     vim.keymap.set("n", "<", function() cin.scroll("15k15<C-y>") end)
--
--     vim.keymap.set("n", "<leader>sd", function(opts) vim.g.cinnamon_disable = true end)
--     vim.keymap.set("n", "<leader>se", function(opts) vim.g.cinnamon_disable = false end)
--   end,
-- }
--
return {
  "karb94/neoscroll.nvim",
  config = function()
    local neoscroll = require('neoscroll')
    neoscroll.setup({
      easing = "quadratic",
      hide_cursor = false,
    })
    local keymap = {
      ['<'] = function () neoscroll.scroll(-15, {duration=200}) end;
      ['>'] = function () neoscroll.scroll(15, {duration=200}) end;
    }
    local modes = { 'n', 'v', 'x' }
    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func)
    end
  end
}

