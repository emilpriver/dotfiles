require('basics')
require('colors')
require('telescope-config')
require('coc-config')
require('null-ls-config')
require('refactoring-config')
require('nvim-lsp-config')
require('treesitter-config')
require('spellsitter-config')
require('fzf-lsp-config')

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'olimorris/onedarkpro.nvim'
  use 'nvim-treesitter/nvim-treesitter' 
  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim'}   
    }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-buffer'}
  use {'simrat39/rust-tools.nvim'}
  use {'hrsh7th/vim-vsnip'}
  use {'fatih/vim-go' }
  use { 
    "ur4ltz/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
  use {
    "jose-elias-alvarez/null-ls.nvim",
    requires = {
      {'nvim-lua/plenary.nvim'},
    }
  }
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      {"nvim-lua/plenary.nvim"},
      {"nvim-treesitter/nvim-treesitter"}
    }
  }
  use {"kdheepak/lazygit.nvim"}
  use {"f-person/git-blame.nvim"}
  use {'neovim/nvim-lspconfig'}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  use {'gfanto/fzf-lsp.nvim'}
  use {'lewis6991/spellsitter.nvim'}
end)
