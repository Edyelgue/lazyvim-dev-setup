return {
	{
		"neovim/nvim-lspconfig",
		ft = { "javascript", "typescript" },
		opts = {
			servers = {
				tsserver = {},
			},
		},
	},
}
