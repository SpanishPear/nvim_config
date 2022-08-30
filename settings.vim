" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" make copilot stop expanding onspace
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
set mouse=a

" setup the colour schemes
"termgui colors is true collour, not 256 color
if (has("termguicolors"))
  set termguicolors
endif

" colour schemes
set background=dark
colorscheme gruvbox


" try and make highlighted yank work
highlight HighlightedyankRegion cterm=reverse gui=reverse

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" vimwiki
set nocompatible
set number
filetype plugin on
syntax on
