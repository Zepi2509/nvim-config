return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",

			build = "make",

			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{ "nvim-telescope/telescope-ui-select.nvim" },

		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
	},
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		-- Enable Telescope extensions if they are installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")

		-- See `:help telescope.builtin`
		local builtin = require("telescope.builtin")
		local keymap = vim.keymap
		keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp" })
		keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[F]ind [K]eymaps" })
		keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
		keymap.set("n", "<leader>fs", builtin.builtin, { desc = "[F]ind [S]elect Telescope" })
		keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "[F]ind current [W]ord" })
		keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
		keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
		keymap.set("n", "<leader>fr", builtin.resume, { desc = "[F]ind [R]esume" })
		keymap.set("n", "<leader>f.", builtin.oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
		keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

		vim.keymap.set("n", "<leader>/", function()
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				winblend = 10,
				previewer = false,
			}))
		end, { desc = "[/] Fuzzily search in current buffer" })

		--  See `:help telescope.builtin.live_grep()` for information about particular keys
		vim.keymap.set("n", "<leader>f/", function()
			builtin.live_grep({
				grep_open_files = true,
				prompt_title = "Live Grep in Open Files",
			})
		end, { desc = "[F]ind [/] in Open Files" })

		-- Shortcut for searching your Neovim configuration files
		vim.keymap.set("n", "<leader>fn", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "[F]ind [N]eovim files" })
	end,
}
