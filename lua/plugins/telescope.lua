return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" },
		config = function()
			local builtin = require("telescope.builtin")

      local function some_f()
        builtin.find_files({
          find_command = 'find'
        })
      end

			vim.keymap.set("n", "gf", some_f, {})
			vim.keymap.set("n", "gF", builtin.live_grep, {})
			vim.keymap.set("n", "gb", builtin.buffers, {})
			vim.keymap.set("n", "gH", builtin.help_tags, {})
			vim.keymap.set("n", "gG", builtin.resume, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			local actions = require("telescope.actions")
			require("telescope").setup({
				defaults = {
					mappings = {
						["<C-Up>"] = actions.cycle_history_prev,
					},
					vimgrep_arguments = {
						"rg",
						"--color=never",
						"--no-heading",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
            "--regexp",
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
		lazy = true,
	},
}
