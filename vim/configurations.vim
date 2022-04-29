" Autopairs
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Vim-wiki
let g:wiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:wiki_markdown_link_ext = 1
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'
let g:wiki_root = '~/.wiki'
let g:wiki_link_target_type = 'md'

" Vim-markdown
let g:markdown_markdown_folding_disabled = 1

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-l>"



" Default browserx viewer
let g:netrw_browsex_viewer= "xdg-open"

" VimTex
let g:vimtex_view_method = 'zathura'


" Vim-slime
let g:slime_target = "tmux"

let g:slime_python_ipython = 1

" always send text to the top-right pane in the current tmux tab without asking
let g:slime_default_config = {
            \ 'socket_name': get(split($TMUX, ','), 0),
            \ 'target_pane': '{top-right}' }
let g:slime_dont_ask_default = 1


" vim wiki
