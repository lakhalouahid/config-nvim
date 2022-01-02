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
nnoremap <M-a> <C-W>

" White spaces
au! InsertLeave * match extrawhitespace /\s\+$/

" Iron
nmap glr <Plug>(iron-send-motion)
vmap glv <Plug>(iron-visual-send)
nmap gll <Plug>(iron-repeat-cmd)
nmap gli <Plug>(iron-interrupt)
nmap glq <Plug>(iron-exit)
nmap glc <Plug>(iron-send-motion)ic<space>nc<CR>
nmap glf :IronFocus<CR>

" Command-window
cnoremap <A-s> <c-right>
cnoremap <A-b> <c-left>

" Documentation
command -nargs=1 Pd :!pd <args>


" map <Leader>r to run script
nnoremap <Leader>if :IPythonCellRun<CR>

" map <Leader>R to run script and time the execution
nnoremap <Leader>iF :IPythonCellRunTime<CR>

" map <Leader>c tj execute the current cell
nnoremap <Leader>ii :IPythonCellExecuteCell<CR>

" map <Leader>C to execute the current cell and jump to the next cell
nnoremap <Leader>ic :IPythonCellExecuteCellJump<CR>

" map [c and ]c to jump to the previous and next cell header
nnoremap [c :IPythonCellPrevCell<CR>
nnoremap ]c :IPythonCellNextCell<CR>

nmap <Leader>is <Plug>SlimeRegionSend<CR>
vmap <Leader>is <Plug>SlimeRegionSend<CR>
nmap <Leader>il <Plug>SlimeLineSend<CR>
nmap <Leader>io <Plug>SlimeMotionSend<CR>
vmap <Leader>id <Plug>IPythonShowDoc<CR>
