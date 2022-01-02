" Quit insert mode mappings
inoremap jk <esc>
tnoremap jk <C-\><C-n>
inoremap <F7> <LEFT>
inoremap <F8> <RIGHT>

" Tabs movements
nnoremap tn :tabnew<cr>
nnoremap tt :tab split<cr>
nnoremap tq :q<cr>
nnoremap tc :tabclose<cr>
nnoremap tj :tabn<cr>
nnoremap tl :+tabm<cr>
nnoremap tk :tabp<cr>
nnoremap th :-tabm<cr>

" Visual shifting
vnoremap < <gv
vnoremap > >gv

" Clipboard
au! TextYankPost * call setreg("+", getreg('"'))
nnoremap <Leader>pp "+p
vnoremap <Leader>pp "+p
nnoremap <Leader>pP "+P
vnoremap <Leader>pP "+P

" Foldmethod
nnoremap <Leader>fs :set foldmethod=syntax<CR>
nnoremap <Leader>fi :set foldmethod=indent<CR>

" Terminal
nnoremap <silent><C-w>N :vnew<Cr>
nnoremap <leader>s :sp term://
nnoremap <leader>v :vsp term://
au! TermOpen * redraw!
au! TermOpen * setlocal norelativenumber nonumber


" Vim Fugitive https://github.com/tpope/vim-fugitive
nnoremap <leader>gs :G<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>gh :diffget //3<CR>

" Vim easy-align https://github.com/junegunn/vim-easy-align
"! note vip<C-X> fot regex
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" Open vim commands such as nmap options in new tab
command -nargs=1 Vcmd :tabnew|pu=execute('<args>')

" Vimwiki
au! FileType markdown,vimwiki.markdown :set filetype=markdown

" Markdown-runner
au! FileType markdown nnoremap <Leader>gr :MarkdownRunner<CR>
au! FileType markdown nnoremap <Leader>gR :MarkdownRunnerInsert<CR>

" Save session
au! FileType * nmap <C-S> :mksession! /home/hamza/.local/share/nvim/swap/session.vim<CR>

" Filetype set
nnoremap <leader>th :set filetype=html<cr>
nnoremap <leader>tv :set filetype=vue<cr>
nnoremap <leader>tp :set filetype=php<cr>
nnoremap <leader>ty :set filetype=python<cr>
nnoremap <leader>tm :set filetype=markdowm<cr>
nnoremap <leader>tc :set filetype=c<cr>
nmap <M-s> <C-W>

" White spaces
au! InsertLeave * match extrawhitespace /\s\+$/

" Command-window
cnoremap <A-s> <c-right>
cnoremap <A-b> <c-left>

" IPythonCell
nnoremap <Leader>if :IPythonCellRun<CR>
nnoremap <Leader>iF :IPythonCellRunTime<CR>
nnoremap <Leader>ii :IPythonCellExecuteCell<CR>
nnoremap <Leader>ic :IPythonCellExecuteCellJump<CR>
nnoremap [c :IPythonCellPrevCell<CR>
nnoremap ]c :IPythonCellNextCell<CR>

" Vim-slime
nnoremap <Leader>is <Plug>SlimeRegionSend<CR>
vnoremap <Leader>is <Plug>SlimeRegionSend<CR>
nnoremap <Leader>il <Plug>SlimeLineSend<CR>
nnoremap <Leader>io <Plug>SlimeMotionSend<CR>
vnoremap <Leader>id <Plug>IPythonShowDoc<CR>
