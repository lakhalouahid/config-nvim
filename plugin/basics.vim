"# General tweeks #
inoremap jk <esc>

"# Tabs mappings #
nnoremap tn :tabnew<cr>
nnoremap tt :tab split<cr>
nnoremap tq :q<cr>
nnoremap tc :tabclose<cr>
nnoremap tl :tabn<cr>
nnoremap to :+tabm<cr>
nnoremap th :tabp<cr>
nnoremap ty :-tabm<cr>



"# Folding and unfolding setting #
" Set synthax/indent as the methode for folding
nnoremap <Leader>ks :set foldmethod=syntax<CR>
nnoremap <Leader>ki :set foldmethod=indent<CR>


"# Visual shifting #
vnoremap < <gv
vnoremap > >gv

"# Clipboard #
nnoremap <Leader>p "+p
vnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>P "+P
au! TextYankPost * call setreg("+", getreg('"'))
"# Easy way to quit #
nnoremap Q :qa!<CR>

"# Make cursor style change with modes for gnu screen gnu #
" let &t_EI.="\eP\e[2 q\e\\" "EI = NORMAL mode (ELSE)
" let &t_SI.="\eP\e[6 q\e\\" "SI = INSERT mode
" let &t_SR.="\eP\e[4 q\e\\" "SR = REPLACE mode
" augroup cursorshapechange
" autocmd!
" autocmd InsertEnter * execute 'silent !echo -ne "\e[6 q\e";echo -ne "\eP\e[6 q\e\\"'
" autocmd InsertLeave * execute 'silent !echo -ne "\e[2 q\e";echo -ne "\eP\e[2 q\e\\"'
" augroup END

"set guicursor=n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20

"# Colorscheme #
colorscheme gruvbox
" highlight Normal ctermbg=NONE

"# Show white space caracters #
highlight extrawhitespace ctermbg=DarkMagenta guibg=blue
au InsertLeave * match extrawhitespace /\s\+$/


"# Open vertical new window split
nnoremap <silent><C-w>N :vnew<Cr>


"# Read aliases from ~/.bash_aliases
let $BASH_ENV='~/.bash_aliases'
