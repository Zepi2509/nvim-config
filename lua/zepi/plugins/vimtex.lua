return {
	"lervag/vimtex",
	init = function()
		vim.cmd("filetype plugin indent on")
		vim.cmd("syntax enable")
		vim.g.vimtex_compiler_method = "latexmk"
		vim.g.vimtex_compiler_latexmk = {
			out_dir = ".tex_build",
		}
		vim.g.vimtex_view_method = "zathura"
	end,
}
