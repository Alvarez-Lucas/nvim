local fn = vim.fn
-- Automatically Install Packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Automatically Update Plugins After Save
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'  -- Packer can manage itself
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'

  -- Theming
  use 'tribela/vim-transparent'
  use 'dracula/vim'

  -- Tree File Explorer
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- CMP
  use 'hrsh7th/nvim-cmp'         -- Completions Plugin
  use 'hrsh7th/cmp-buffer'       -- Buffer Completions
  use 'hrsh7th/cmp-path'         -- Path Completions
  use 'hrsh7th/cmp-cmdline'      -- CMD Line Completions
  use 'saadparwaiz1/cmp_luasnip' -- Snippet Completions
  use 'hrsh7th/cmp-nvim-lsp'     -- LSP for CMP??
  use 'hrsh7th/cmp-nvim-lua'     -- ??

  use 'L3MON4D3/LuaSnip'         -- Snippet Engine
  use 'rafamadriz/friendly-snippets' -- Snippet Collection

  -- LSP
  use 'neovim/nvim-lspconfig'    -- LSP Config Boostrap
  use 'williamboman/nvim-lsp-installer' -- LSP Installer

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = "TSUpdate"
  }
  use 'p00f/nvim-ts-rainbow'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)


