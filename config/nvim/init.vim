
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/snippets.vim
source $HOME/.config/nvim/keys/coc.vim
source $HOME/.config/nvim/general/function.vim
source $HOME/.config/nvim/general/leaderf.vim


syntax on
set termguicolors

let g:gruvbox_italic = 1
"let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox
let g:airline_theme = 'base16_gruvbox_dark_hard'

"colorscheme pencil
"let g:airline_powerline_fonts = 1
"let g:airline_theme = 'pencil'
"let g:pencil_terminal_italics = 1
let g:rainbow_active = 1

" let g:clang_format#code_style = 'webkit'
" let g:clang_format#auto_format = 1
"
"
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff = 1
let g:UltiSnipsExpandTrigger = "<tab>"
let g:suda_smart_edit = 1
let g:indentLine_bgcolor_term = 202

let g:mkdp_refresh_slow = 1
let g:gofmt_exe = 'goimports'
let g:pandoc#modules#disabled = ["spell", "folding"]

let g:EasyMotion_smartcase = 1


lua require'colorizer'.setup()


autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd FileType c let g:clang_format#auto_format = 1
autocmd FileType cpp let g:clang_format#auto_format = 1
autocmd FileType java let g:clang_format#auto_format = 1
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2
autocmd FileType markdown let g:indentLine_setConceal=0 
autocmd FileType markdown set wrap linebreak

autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html Prettier
autocmd BufWritePost *.xml PrettyXML

highlight Comment cterm=italic gui=italic

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
command! PrettyXML call DoPrettyXML()

augroup restore_cursor_shape
  autocmd!
  au VimLeave * set guicursor=a:ver10-blinkoff0
augroup END

let g:startup = getcwd()

"try map keys to the new keyboard layout

nnoremap n j
nnoremap N J
nnoremap o l
nnoremap i k

nnoremap k i
nnoremap K I

nnoremap l o
nnoremap L O

nnoremap j y
nnoremap jj yy

nnoremap y n

vnoremap n j
vnoremap o l
vnoremap i k

