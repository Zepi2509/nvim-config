return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	opts = {
		ensure_installed = { "bash", "c", "html", "lua", "markdown", "vim", "vimdoc" },
		auto_install = true,
		highlight = {
			enable = true,
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<C-space>",
				node_incremental = "<C-space>",
				scope_incremental = "false",
				node_decremental = "<bs>",
			},
		},
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
	},
	config = function(_, opts)
		---@diagnostic disable-next-line: missing-fields
		require("nvim-treesitter.configs").setup(opts)
	end,
}
