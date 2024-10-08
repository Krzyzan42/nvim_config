return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup()

			vim.keymap.set("n", "ga", function() harpoon:list():add() end)
			vim.keymap.set("n", "gm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

			vim.keymap.set("n", "g1", function() harpoon:list():select(1) end, { noremap = true })
			vim.keymap.set("n", "g2", function() harpoon:list():select(2) end, { noremap = true })
			vim.keymap.set("n", "g3", function() harpoon:list():select(3) end, { noremap = true })
			vim.keymap.set("n", "g4", function() harpoon:list():select(4) end, { noremap = true })
			vim.keymap.set("n", "g5", function() harpoon:list():select(5) end, { noremap = true })
			vim.keymap.set("n", "g6", function() harpoon:list():select(6) end, { noremap = true })
		end,
	},
	{
		"jasonpanosso/harpoon-tabline.nvim",
		config = function()
      require('harpoon'):setup()
			require("harpoon-tabline").setup()
		end,
	},
}
