require('config.setup')
require('config.remap')

local gh_prefix = 'https://github.com/'

local function starts_with(str, start)
  return string.sub(str, 1, #start) == start
end

local function add_gh_prefix(src)
  if ! starts_with(src, gh_prefix) then
    return 'https://github.com/' .. src
  end

  return src
end

local function prepare_specs(specs)
  for k, v in pairs(specs) do
    if type(v) == 'string' then
      specs[k] = add_gh_prefix(v)
    else
      local src = v['src']
      if src ~= nil then
        v['src'] = add_gh_prefix(src)
      end
    end
  end

  return specs
end

vim.pack.add(prepare_specs({
  { src = 'arnamak/stay-centered.nvim' },

  -- telescope
  'nvim-lua/plenary.nvim',
  {
    src = 'nvim-telescope/telescope.nvim',
    version = 'master',
  },

  --lsp
  'neovim/nvim-lspconfig',
  --cmp (autocomplete)
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  --snippets
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',

  'nvim-tree/nvim-web-devicons',
  'bluz71/vim-moonfly-colors',
  'OXY2DEV/markview.nvim',
  'tpope/vim-surround',
  'windwp/nvim-autopairs',
}))

require('stay-centered').setup()
require('nvim-autopairs').setup()
vim.cmd [[colorscheme moonfly]]
