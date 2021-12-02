"## JSON ##
autocmd FileType javascript noremap <leader>efs :call JsBeautify()<cr>
autocmd FileType json noremap <leader>efj :call JsonBeautify()<cr>



"## MATLAB ##
let g:matlab_term_cmd='matlab -nodesktop'
let g:matlab_screen_default_mapping = 1
let g:matlab_screen_terminal_height = 10

"## AUTOPAIRS ##
let g:AutoPairsShortcutBackInsert = '<M-b>'



"## Golang ##
"
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_auto_type_info = 1


augroup GoVimMappings
  au!
  au FileType go nmap <Leader>gb :GoBuild<CR>
  au FileType go nmap <Leader>gt :GoTest<CR>
  au FileType go nmap <Leader>gf :GoFmt<CR>
  au FileType go nmap <Leader>gr :GoRun<CR>
  au FileType go nmap <Leader>gds <Plug>(go-def-split)
  au FileType go nmap <Leader>gdv <Plug>(go-def-vertical)
  au FileType go nmap <Leader>gdt <Plug>(go-def-tab)
  au FileType go nmap <Leader>gdd :GoDef<CR>
  au FileType go nmap <Leader>gD :GoDoc<CR>
  au FileType go nmap <leader>gis :GoInstall<CR>
  au FileType go nmap <leader>gc :GoDecls<CR>
  au FileType go nmap <leader>gs :GoDescribe<CR>
  au FileType go nmap <leader>gce :GoCallees<CR>
  au FileType go nmap <leader>gip :GoImports<CR>
  au FileType go nmap <leader>glp :GoImplements<CR>
  au FileType go nmap <leader>gR :GoReferrers<CR>
  au FileType go nmap <leader>gcr :GoCallers<CR>
  au FileType go nmap <Leader>gii <Plug>(go-info)
augroup END


"## SNIPPETS ##
" Use <C-l> for trigger snippet expand.
imap <c-l> <Plug>(coc-snippets-expand)

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

" Coc-Pairs
autocmd FileType markdown let b:coc_pairs_disabled = ['`', '[']


"## VIM FUGITIVE ##

nmap <leader>kg :G<CR>
nmap <leader>ky :diffget //2<CR>
nmap <leader>ko :diffget //3<CR>


"## VIM-WIKI ##
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_filetypes = ['markdown']


"## MAXIMIZER ##
" let g:maximizer_set_default_mapping = 0
" let g:maximizer_set_mapping_with_bang = 0
" nnoremap <silent><leader>km :MaximizerToggle<CR>

"## VIM EASY ALIGN ##
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"## Browsering  ##
let g:netrw_browsex_viewer= "lynx"


"## Goyo ##
nmap <silent><leader>ky :Goyo<CR>

autocmd! TermOpen * redraw!


" Open vim commands such as nmap options in new tab
command -nargs=1 Vcmd :tabnew|pu=execute('<args>')


"## Terminal
tnoremap jk <C-\><C-n>
au! TermOpen * setlocal norelativenumber nonumber


"## Markdown stuff
nmap <silent><leader>ht i&emsp;<ESC>
vmap <silent><leader>hb <ESC>`>a**<ESC>`<i**<ESC>
vmap <silent><leader>hi <ESC>`>a*<ESC>`<i*<ESC>
nmap <silent><leader>hb ysiw*l.
nmap <silent><leader>hi ysiw*
vmap <silent><leader>hl <ESC>`>a]<ESC>`<i[<ESC>%a(
" vim-markdown
let g:vim_markdown_folding_disabled = 1
au! FileType markdown,vimwiki.markdown :set filetype=markdown
nnoremap <silent><leader>mx :exe ':silent !chromium %'<CR>
nnoremap <silent><leader>mp :!md2pdf % -o /tmp/markdown.pdf && pkill -HUP mupdf<CR>
nnoremap <silent><leader>mm :!mupdf /tmp/markdown.pdf &<CR>
nnoremap <silent><leader>mf :CocCommand markdownlint.fixAll<CR>


"## Emmetvim
" let g:user_emmet_install_global = 0
" autocmd FileType html,css,md,markdown EmmetInstall
" let g:user_emmet_leader_key=','

"## UltiSnips
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-l>"

"## Markdown-runner
autocmd FileType markdown nnoremap <silent><Leader>r :MarkdownRunner<CR>
autocmd FileType markdown nnoremap <silent><Leader>R :MarkdownRunnerInsert<CR>

"## MATLAB
let g:matlab_term_cmd='matlab -nodesktop'
let g:matlab_screen_default_mapping = 0

augroup MatlabScreenMapping
  au!
  au FileType matlab vnoremap <Leader>dr  :call matlab#RunSelected()<CR>
  au FileType matlab nnoremap <Leader>dr  :call matlab#RunCell()<CR>
  au FileType matlab nnoremap <Leader>dR  :call matlab#RunCurrentFile()<CR>
  au FileType matlab nnoremap <Leader>dd  :call matlab#GetDoc()<CR>
  au FileType matlab nnoremap <Leader>db  :call matlab#SetBreak()<CR>
  au FileType matlab nnoremap <Leader>dv  :call matlab#WatchVarible()<CR>
  au FileType matlab nnoremap <Leader>df  :call matlab#OpenCurrentFile()<CR>
  au FileType matlab nnoremap <Leader>daf :call matlab#OpenAllFile()<CR>
  au FileType matlab nnoremap <Leader>dw  :call matlab#OpenWorkspace()<CR>
  au FileType matlab nnoremap <Leader>dc  :call matlab#ClearVariables()<CR>
  au FileType matlab nnoremap <Leader>ds  :call matlab#GetVariableSize()<CR>
  au FileType matlab nnoremap <Leader>dt  :call matlab#Toggle()<CR>
augroup END

delete matlab_tmp.m