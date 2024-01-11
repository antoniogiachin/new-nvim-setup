return {
	"MunifTanjim/prettier.nvim",
	config = function()
		vim.keymap.set("n", "<leader>P", "<cmd>Prettier<CR>")
	end,
}
