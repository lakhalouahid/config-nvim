"## JSON ##
autocmd FileType javascript noremap <leader>efs :call JsBeautify()<cr>
autocmd FileType json noremap <leader>efj :call JsonBeautify()<cr>




"## MATLAB ##
let g:matlab_term_cmd='matlab -nodesktop'
let g:matlab_screen_default_mapping = 1
let g:matlab_screen_terminal_height = 10

"## AUTOPAIRS ##
let g:AutoPairsShortcutBackInsert = '<M-b>'



"## GOLANG ##


augroup GoVimMappings
  au!
  au FileType go nmap <Leader>gob :GoBuild<CR>
  au FileType go nmap <Leader>got :GoTest<CR>
  au FileType go nmap <Leader>gor :GoRun<CR>
  au FileType go nmap <Leader>god :GoDoc
  au FileType go nmap <leader>goc :cclose<CR>
  au FileType go nmap <leader>goi :GoInstall<CR>
  au FileType go nmap <leader>goc :GoDecls<CR>
  au FileType go nmap <leader>gos :GoDescribe<CR>
  au FileType go nmap <leader>goce :GoCallees<CR>
  au FileType go nmap <leader>gop :GoImports<CR>
  au FileType go nmap <leader>golp :GoImplements<CR>
  au FileType go nmap <leader>gocr :GoCallers<CR>
  au FileType go nmap <leader>godd :GoDeclsDir<CR>
  au FileType go nmap <Leader>goi <Plug>(go-info)
augroup END



"## SNIPPETS ##
" Use <C-l> for trigger snippet expand.
imap <tab> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)


"## VIM FUGITIVE ##

nmap <leader>kg :G<CR>
nmap <leader>ky :diffget //2<CR>
nmap <leader>ko :diffget //3<CR>
nmap <leader>ky :G<CR>
