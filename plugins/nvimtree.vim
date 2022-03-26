let g:nvim_tree_icons = {
\ 'default': '',
\ 'symlink': '',
\ 'git': {
\   'unstaged': "✗",
\   'staged': "✓",
\   'unmerged': "",
\   'renamed': "➜",
\   'untracked': "★",
\   'deleted': "",
\   'ignored': "◌"
\   },
\ 'folder': {
\   'arrow_closed': "",
\   'arrow_open': "",
\   'default': "",
\   'open': "",
\   'empty': "",
\   'empty_open': "",
\   'symlink': "",
\   'symlink_open': "",
\   },
\   'lsp': {
\     'hint': "",
\     'info': "",
\     'warning': "",
\     'error': "",
\   },
\}

let g:nvim_tree_indent_markers = 1 

lua <<EOF
require'nvim-tree'.setup {
  view = {
    mappings = {
      custom_only = false,
      list = {
          { key = "<C-e>", action = "" },
      }
    }
  }
}
EOF



nnoremap <C-e> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" More available functions:
" NvimTreeOpen
" NvimTreeClose
" NvimTreeFocus
" NvimTreeFindFileToggle
" NvimTreeResize
" NvimTreeCollapse
" NvimTreeCollapseKeepBuffers

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue
