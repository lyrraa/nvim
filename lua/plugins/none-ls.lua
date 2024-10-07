return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.formatting._,
        -- null_ls.builtins.diagnostics._
			},
		})

		vim.keymap.set("n", "<space>gf", vim.lsp.buf.format, {})
	end,
}
