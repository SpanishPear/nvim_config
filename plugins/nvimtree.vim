lua <<EOF
require'nvim-tree'.setup {
  view = {
    mappings = {
      custom_only = false,
      list = {
          { key = "<C-e>", action = "" },
      }
    },
  },
  renderer = {
    indent_markers = {
      enable = true,
    },
    icons = {
      glyphs = { 
        default = '',
        folder =  {
          arrow_closed = "",
          arrow_open = "",
        },
      },
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

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue
