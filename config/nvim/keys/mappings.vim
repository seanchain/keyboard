" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :q!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
inoremap zx <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-n> <C-w>j
nnoremap <C-i> <C-w>k
nnoremap <C-o> <C-w>l


nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

nnoremap <C-n> :tabedit<CR>
noremap <Leader>n :tabn<CR>
noremap <Leader>p :tabp<CR>
noremap <Leader>e :edit<CR>
noremap <Leader>q :qa!<CR>
noremap <Leader>g :Goyo<CR>
noremap <Leader>e :CocCommand explorer --width 25<CR>
noremap <Leader>s :w<CR>
noremap <Leader>uc g~iw

noremap <Leader>v vi


" easy motion
nmap f <Plug>(easymotion-f)
nmap F <Plug>(easymotion-F)
nmap w <Plug>(easymotion-w)
nmap W <Plug>(easymotion-W)
nmap b <Plug>(easymotion-b)
nmap B <Plug>(easymotion-B)
nmap <Leader>n <Plug>(easymotion-j)
nmap <Leader>i <Plug>(easymotion-k)

nnoremap <C-_> :call NERDComment(0,"toggle")<CR>
vnoremap <C-_> :call NERDComment(0,"toggle")<CR>

noremap <C-p> :MarkdownPreview<CR>

vnoremap <Space> zf
nnoremap S :%s//g<Left><Left>
