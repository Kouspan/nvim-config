return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    { 'L3MON4D3/LuaSnip' },
    { 'hrsh7th/cmp-buffer' }
  },
  config = function()
    -- Here is where you configure the autocompletion settings.
    local cmp = require('cmp')
    local border = {
      { "╭", "CmpBorder" },
      { "─", "CmpBorder" },
      { "╮", "CmpBorder" },
      { "│", "CmpBorder" },
      { "╯", "CmpBorder" },
      { "─", "CmpBorder" },
      { "╰", "CmpBorder" },
      { "│", "CmpBorder" },
    }
    cmp.setup({
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' }
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-f>'] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Insert,
          select = true,
        },
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
      }),
      -- window = {
      --   documentation = {
      --     border = 'rounded',
      --   },
      --   completion = {
      --     border = 'rounded',
      --   },
      -- },
      cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      }),
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
          { name = 'cmdline' }
        })
      }),
      cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
          { name = 'buffer' },
        })
      }),
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end
      }
    })
  end
}