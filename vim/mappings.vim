" Quit insert mode mappings
imap <F7> <LEFT>
imap <F8> <RIGHT>

" Tabs movements
nmap tn :tabnew<cr>
nmap tt :tab split<cr>
nmap tq :q<cr>
nmap tc :tabclose<cr>
nmap tj :tabn<cr>
nmap tl :+tabm<cr>
nmap tk :tabp<cr>
nmap th :-tabm<cr>

" Visual shifting
vnoremap < <gv
vnoremap > >gv

" Clipboard
au! TextYankPost * call setreg("+", getreg('"'))
nmap <Leader>pp "+p
vmap <Leader>pp "+p
nmap <Leader>pP "+P
vmap <Leader>pP "+P

" Foldmethod
nmap <Leader>fs :set foldmethod=syntax<CR>
nmap <Leader>fi :set foldmethod=indent<CR>

" Terminal
nmap <C-w>N :vnew<Cr>
nmap <leader>s :sp term://
nmap <leader>v :vsp term://
au! TermOpen * setlocal norelativenumber nonumber
au! TermOpen * redraw!


" Vim Fugitive https://github.com/tpope/vim-fugitive
nmap <leader>gs :G<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gh :diffget //3<CR>

" Vim easy-align https://github.com/junegunn/vim-easy-align
"! note vip<C-X> fot regex
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" Open vim commands such as nmap options in new tab
command -nargs=1 Vcmd :tabnew|pu=execute('<args>')

" Vimwiki
au! FileType vimwiki.markdown :set filetype=markdown

" Markdown-runner
au! FileType markdown nnoremap <Leader>gr :MarkdownRunner<CR>
au! FileType markdown nnoremap <Leader>gR :MarkdownRunnerInsert<CR>

" Save session
nmap <C-S> :mksession! ~/.local/share/nvim/swap/session.vim<CR>

" Filetype set
nmap <leader>ts :set filetype=sh<cr>
nmap <leader>th :set filetype=html<cr>
nmap <leader>tj :set filetype=js<cr>
nmap <leader>tl :set filetype=lua<cr>
nmap <leader>tp :set filetype=php<cr>
nmap <leader>ty :set filetype=python<cr>
nmap <leader>tm :set filetype=markdowm<cr>
nmap <leader>tc :set filetype=c<cr>

" White spaces
au! InsertLeave * match extrawhitespace /\s\+$/

" Command-window
cmap <A-s> <c-right>
cmap <A-b> <c-left>

" map <Leader>r to run script
nmap <Leader>is <Plug>SlimeRegionSend<CR>
vmap <Leader>is <Plug>SlimeRegionSend<CR>
nmap <Leader>il <Plug>SlimeLineSend<CR>
nmap <Leader>io <Plug>SlimeMotionSend<CR>
vmap <Leader>id <Plug>IPythonShowDoc<CR>
nmap <Leader>if :IPythonCellRun<CR>
nmap <Leader>iF :IPythonCellRunTime<CR>
nmap <Leader>ii :IPythonCellExecuteCell<CR>
nmap <Leader>ic :IPythonCellExecuteCellJump<CR>

" map [c and ]c to jump to the previous and next cell header
nmap [c :IPythonCellPrevCell<CR>
nmap ]c :IPythonCellNextCell<CR>
nmap [g :cnext<CR>
nmap ]g :cprev<CR>


let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

nmap <C-W>o <nop>
nmap <C-W>o <Plug>(vzoom)
nmap <M-a> <C-W>
tmap <M-s> <C-\><C-n>
