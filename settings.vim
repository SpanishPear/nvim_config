" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

let g:copilot_no_tab_map=v:true
let g:copilot_assume_mapped=v:true


" keep terms open when closed
set hidden

"tabwidth
set tabstop=2
set shiftwidth=2
set expandtab
set updatetime=100
set nowrap
set foldmethod=syntax
set backupdir=~/.cache/vim

" 80 col borrder
set cc=80
" setup the colour schemes
"termgui colors is true collour, not 256 color
if (has("termguicolors"))
  set termguicolors
endif
set background=dark
colorscheme gruvbox


" try and make highlighted yank work
highlight HighlightedyankRegion cterm=reverse gui=reverse


" vimwiki
set nocompatible
filetype plugin on
syntax on
