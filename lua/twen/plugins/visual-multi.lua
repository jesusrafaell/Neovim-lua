return {
	"mg979/vim-visual-multi",
	branch = "master",
	opts = {
		-- Add your custom settings here (if any are needed)
	},
	keys = {
		{ "<C-n>", nil, desc = "Create a new cursor at the current word" },
		{ "<C-d>", "<Plug>(VM-Find-Under)", desc = "Create a new cursor at the current word (alias for <C-n>)" },
		{ "<C-Down>", nil, desc = "Add a cursor on the line below" },
		{ "<C-Up>", nil, desc = "Add a cursor on the line above" },
		{ "<Esc>", nil, desc = "Exit multi-cursor mode" },
	},
}
