" autoinstall vim-plug, if not exists
"let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
"if empty(glob(data_dir . '/autoload/plug.vim'))
 " silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

" install plugins
call plug#begin('~/.vim/plugged')
    
  Plug 'tpope/vim-obsession'
  Plug 'dhruvasagar/vim-prosession'
  Plug 'maxmellon/vim-jsx-pretty'

  Plug 'neovim/nvim-lspconfig'
  Plug 'jose-elias-alvarez/null-ls.nvim'
  Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

  " vim suround
  Plug 'tpope/vim-surround.vim'
  
  " git
  Plug 'lewis6991/gitsigns.nvim'

  " markdown TOC
  Plug 'mzlogin/vim-markdown-toc'


  " zen mode for vim
  Plug 'junegunn/goyo.vim' 

	" Collection of common configurations for the Nvim LSP client
	Plug 'neovim/nvim-lspconfig'

  " Used for common vim snippets
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  " markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

  " definition preview
  Plug 'rmagatti/goto-preview'

   
  " A light-weight lsp plugin based on neovim built-in lsp with highly a performant UI. 
  Plug 'tami5/lspsaga.nvim'

 	" highlight yanks
	Plug 'machakann/vim-highlightedyank'

	" Completion framework
	Plug 'hrsh7th/nvim-cmp'

	" LSP completion source for nvim-cmp
	Plug 'hrsh7th/cmp-nvim-lsp'

	" Snippet completion source for nvim-cmp
	Plug 'hrsh7th/cmp-vsnip'

	" Other usefull completion sources
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-buffer'

	" See hrsh7th's other plugins for more completion sources!

	" To enable more of the features of rust-analyzer, such as inlay hints and more!
	Plug 'simrat39/rust-tools.nvim'

	" Snippet engine
	Plug 'hrsh7th/vim-vsnip'

	" Fuzzy finder
	" Optional
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'p00f/nvim-ts-rainbow'

  "gruvbox theme
	Plug 'morhetz/gruvbox'

	"github copilot
	Plug 'github/copilot.vim'
  
  "rust
  Plug 'rust-lang/rust.vim'
    
  " Extentions to built-in LSP, for example, providing type inlay hints
  Plug 'nvim-lua/lsp_extensions.nvim'
  
  " devicons
  Plug 'kyazdani42/nvim-web-devicons'

  " tabs
  Plug 'romgrk/barbar.nvim'

  " nvimtree
  Plug 'kyazdani42/nvim-tree.lua'

  " statusline
  Plug 'feline-nvim/feline.nvim'

  " jinja
  Plug 'lepture/vim-jinja'
call plug#end()

source $HOME/.config/nvim/plugins/lsp_setup.vim
source $HOME/.config/nvim/plugins/nvimtree.vim
source $HOME/.config/nvim/plugins/barbar.vim
source $HOME/.config/nvim/plugins/feline.vim
source $HOME/.config/nvim/plugins/nvim-treesitter.vim

