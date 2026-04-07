return {
	{
		"neovim/nvim-lspconfig",
		ft = { "php" },
		opts = {
			servers = {
				intelephense = {},
			},
		},
	},
	{
		"adalessa/laravel.nvim",
		ft = { "php" },
		config = true,
	},
}
