return {
  "numToStr/Comment.nvim",
  opts = {
    opleader = { line = 'gxd' }
  },
  config = function()
    require('Comment').setup()
  end
}
