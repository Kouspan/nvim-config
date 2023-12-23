return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    { 'L3MON4D3/LuaSnip' },
  },
  config = function()
    -- Here is where you configure the autocompletion settings.
    local cmp = require('cmp')
    --local cmp_action = lsp_zero.cmp_action()

    cmp.setup({
      sources = { { name = 'nvim_lsp' } },
      mapping = cmp.mapping.preset.insert({
        ['<C-f>'] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Insert,
          select = true,
        },
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
      }),
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end
      }
    })
  end
}
