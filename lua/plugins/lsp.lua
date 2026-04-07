return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			diagnostics = {
				underline = true,
				update_in_insert = false,
			},
			inlay_hints = { enabled = true },
		},
	},
}
