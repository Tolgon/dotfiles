local catppuccin_status_ok, catppuccin = pcall(require, "catppuccin")
if not catppuccin_status_ok then
	return
end

catppuccin.setup({
	color_overrides = {
		all = {
			-- text = "#ffffff",
		},
		mocha = {
			base = "#1e1e2e",
		},
		frappe = {},
		macchiato = {},
		latte = {},
	},
	integrations = {
		cmp = true,
		nvimtree = true,
		notify = true,
		treesitter = true,
        telescope = true,
        illuminate = true,
        which_key = true,
        mason = true,
	},
})

vim.cmd([[colorscheme catppuccin]])
