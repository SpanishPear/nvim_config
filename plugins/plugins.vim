
" autoinstall vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" install plugins
call plug#begin('~/.vim/plugged')

	" Collection of common configurations for the Nvim LSP client
	Plug 'neovim/nvim-lspconfig'

  " A light-weight lsp plugin based on neovim built-in lsp with highly a performant UI. 
  Plug 'tami5/lspsaga.nvim'

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

	" Fuzzy finder[<0;62;36m]
	" Optional
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	" Color scheme used in the GIFs!
	" Plug 'arcticicestudio/nord-vim'

    "gruvbox theme
	Plug 'morhetz/gruvbox'

	"github copilot
	Plug 'github/copilot.vim'

  " Extentions to built-in LSP, for example, providing type inlay hints
  Plug 'nvim-lua/lsp_extensions.nvim'
  
  " devicons
  Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

source $HOME/.config/nvim/plugins/rust-analyzer-lsp.vim
