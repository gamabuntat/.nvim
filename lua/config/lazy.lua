-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  { 'arnamak/stay-centered.nvim', opts = {} },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',

  'mattn/emmet-vim',
  'b3nj5m1n/kommentary',
  'prettier/vim-prettier',
  {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  },
  'tpope/vim-fugitive',
  'f-person/git-blame.nvim',
  'tpope/vim-surround',
  'nvim-tree/nvim-web-devicons',
  { 
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function() 
      vim.cmd [[colorscheme moonfly]]
    end
  },
  {
    "OXY2DEV/markview.nvim",
    lazy = false,

    -- Completion for `blink.cmp`
    -- dependencies = { "saghen/blink.cmp" },
  },
  {
    'mrcjkb/rustaceanvim',
    -- To avoid being surprised by breaking changes,
    -- I recommend you set a version range
    version = '^9',
    -- This plugin implements proper lazy-loading (see :h lua-plugin-lazy).
    -- No need for lazy.nvim to lazy-load it.
    lazy = false,
  }
})
