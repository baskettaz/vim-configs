--auto install packer if not installer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()



-- autocommand that reloads neovim whenever you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')

  use('nvim-lua/plenary.nvim') -- lua functions that manu plugins use
  -- prefered colorscheme (works properly)
  use('bluz71/vim-nightfly-guicolors')

  -- tmux and split window navigation
  use('christoomey/vim-tmux-navigator') 
  
  -- maximizes and restores current window
  use('szw/vim-maximizer') 
  
  -- essential plugins
  use('tpope/vim-surround') -- check the docs -- y|d|c + s + <motion>(e.g. [w]ord) + char to surround
  use('vim-scripts/ReplaceWithRegister') -- check the docs

  -- commenting with gc
  use('numToStr/Comment.nvim')

  -- file explorer
  use('nvim-tree/nvim-tree.lua')

  -- icons
  use('kyazdani42/nvim-web-devicons')
  
  -- statusline
  use("nvim-lualine/lualine.nvim")

  -- fuzzy finding
  use({"nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use({"nvim-telescope/telescope.nvim", branch = "0.1.x" })

  -- autocompletion
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")

  -- snippets
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")


  -- managing and installing lsp servers
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")

  -- configuring lsp servers, linters and formatters
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use({"glepnir/lspsaga.nvim", branch = "main"})
  use("jose-elias-alvarez/typescript.nvim")
  use("onsails/lspkind.nvim")

  -- formatting and linting
  use("jose-elias-alvarez/null-ls.nvim")
  use("jayp0521/mason-null-ls.nvim")

  -- treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({with_sync = true})
    end,
  })

  -- auto closing
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")

  -- git signs plugin
  use("lewis6991/gitsigns.nvim")


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
