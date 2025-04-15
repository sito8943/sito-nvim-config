require'nvim-treesitter.configs'.setup {
	-- list of parser
	ensure_installed = { "javascript", "typescript", "c", "rust" },

	sync_install = false,
	auto_install = true,

	ignore_install = { "lua" },

	highlight = {
		enabled = true,
		additional_vim_regex_highlighting = false,
	},
}
