return {
	'hrsh7th/nvim-cmp',
	event = 'InsertEnter',
	dependencies = {
		{ 'L3MON4D3/LuaSnip' },
	},
	config = function()
		-- Here is where you configure the autocompletion settings.
		local lsp_zero = require('lsp-zero')
		lsp_zero.extend_cmp()

		-- And you can configure cmp even more, if you want to.
		local cmp = require('cmp')
		--local cmp_action = lsp_zero.cmp_action()

		cmp.setup({
			formatting = lsp_zero.cmp_format(),
			mapping = cmp.mapping.preset.insert({
				['<C-f>'] = cmp.mapping.confirm {
					behavior = cmp.ConfirmBehavior.Insert,
					select = true,
				},
				['<C-u>'] = cmp.mapping.scroll_docs(-4),
				['<C-d>'] = cmp.mapping.scroll_docs(4),
			})
		})
	end,
}
