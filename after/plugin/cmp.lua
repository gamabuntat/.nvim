local cmp = require'cmp'

cmp.setup({
  -- snippet = {
  --   expand = function(args) 
  --       vim.fn["vsnip#anonymous"](args.body)
  --   end,
  -- },
  window = {
      -- completion = cmp.config.window.bordered()
  },
  mapping = {
    ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
    ['<C-e>'] = cmp.mapping.close(),
    ['<Tab>'] = cmp.mapping.confirm({
      -- behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    })
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  }
})
