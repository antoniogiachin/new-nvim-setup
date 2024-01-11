return {
	"kdheepak/lazygit.nvim",
	-- optional for floating window border decoration
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- LazyGit
		vim.keymap.set("n", "<leader>gg", "<cmd>:LazyGit<CR>")
	end,
}
