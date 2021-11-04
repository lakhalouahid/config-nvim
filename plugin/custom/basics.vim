"# General tweeks #
inoremap jj <esc>
inoremap kk <esc>:w<cr> 


"# Tabs mappings #
nnoremap tn :tabnew<cr>
nnoremap tt :tab split<cr>
nnoremap tq :q<cr>
nnoremap tc :tabclose<cr>
nnoremap tl :tabn<cr>
nnoremap to :+tabm<cr>
nnoremap th :tabp<cr>
nnoremap ty :-tabm<cr>
nnoremap tf :tabf



"# Folding and unfolding setting #
" Set synthax/indent as the methode for folding
nnoremap <Leader>ks :set foldmethod=syntax<CR>  "Set synthax as the methode for folding
nnoremap <Leader>ki :set foldmethod=indent<CR>


"# Visual shifting #
vnoremap < <gv
vnoremap > >gv

"# Clipboard #
nnoremap <Leader>kp "+p
vnoremap <Leader>kp "+p
nnoremap <Leader>kP "+P
vnoremap <Leader>kP "+P
vnoremap <Leader>kc "+y
nnoremap <Leader>kc "+y

"# Easy way to quit #
nnoremap Q :qa!<CR>

"# Make cursor style change with modes for gnu screen gnu #
let &t_EI.="\eP\e[2 q\e\\" "EI = NORMAL mode (ELSE)
let &t_SI.="\eP\e[6 q\e\\" "SI = INSERT mode
let &t_SR.="\eP\e[4 q\e\\" "SR = REPLACE mode

"# Colorscheme #
colorscheme gruvbox
" highlight Normal ctermbg=NONE

"# Show white space caracters #
highlight extrawhitespace ctermbg=DarkMagenta guibg=blue
au InsertLeave * match extrawhitespace /\s\+$/


"# vim easy align #
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
