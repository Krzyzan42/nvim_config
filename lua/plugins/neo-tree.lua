return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup()
    vim.keymap.set('n', '<leader>nn', ':Neotree filesystem reveal right<CR>')
    vim.keymap.set('n', '<leader>nc', ':Neotree close filesystem<CR>')
  end
}
