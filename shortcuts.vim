" Code navigation shortcuts
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gtd    <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> ga    <cmd>lua vim.lsp.buf.code_action()<CR>
" Goto previous/next diagnostic warning/error
" nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
" nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR


" lsp provider to find the cursor word definition and reference
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
" or use command LspSagaFinder
nnoremap <silent> gh :Lspsaga lsp_finder<CR>

" code action
nnoremap <silent><leader>ga <cmd>lua require('lspsaga.codeaction').code_action()<CR>
" or use command
nnoremap <silent><leader>ga :Lspsaga code_action<CR>

" show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>

" find def and references
nnoremap <silent> gh :Lspsaga lsp_finder<CR>

" scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" show
nnoremap <silent><leader>cd <cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<CR>

nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
" only show diagnostic if cursor is over the area
nnoremap <silent><leader>cc <cmd>lua require('lspsaga.diagnostic').show_cursor_diagnostics()<CR>

" jump diagnostic
" or use command
nnoremap <silent> g] :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> g[ :Lspsaga diagnostic_jump_prev<CR>


nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>

" float terminal also you can pass the cli command in open_float_terminal function
" alt-d will open the term, and in term mode, it will kill the term
nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>

" replace tab mapping
imap <silent><script><expr> <C-T> copilot#Accept("")


augroup lspsaga_filetypes
  autocmd!
  autocmd FileType LspsagaHover nnoremap <buffer><nowait><silent> <Esc> <cmd>close!<cr>
augroup END

" Find files using Telescope command-line sugar.
nnoremap <silent><C-k> <cmd>Telescope find_files<cr>
nnoremap <silent><C-f> <cmd>Telescope live_grep<cr>
nnoremap <silent><C-t> <cmd>Telescope buffers<cr>



