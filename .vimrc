call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'yunlingz/ci_dark'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

map <c-x> :Startify<CR>
map <c-n> :NERDTree<CR>
map <c-l> :vertical resize +5<CR>
map <c-h> :vertical resize -5<CR>
map <c-k> :res +5<CR>
map <c-j> :res -5<CR>

let g:startify_custom_header = [
	\ '',
	\ '  _________              __         ____   ____       __',
	\ ' /   _____/__ __  _____ |__|______  \   \ /   /____ _/  |_  ______',
	\ ' \_____  \|  |  \/     \|  \_  __ \  \   Y   /\__  \\   __\/  ___/',
	\ ' /        \  |  /  Y Y  \  ||  | \/   \     /  / __ \|  |  \___ \',
	\ '/_______  /____/|__|_|  /__||__|       \___/  (____  /__| /____  >',
	\ '        \/            \/                           \/          \/',
	\ '',
	\ ]

let g:startify_fortune_use_unicode = 1
let g:startify_bookmarks = [
	\ { 'v': '~/.vimrc' },
	\ ]


let g:airline_powerline_fonts = 1
let g:airline_theme='behelit'
colorscheme nightfly
set tabstop=4
set shiftwidth=4
set nu rnu
set cursorline
set noerrorbells
set clipboard=unnamed
syntax on
set ruler
set autoindent
set showcmd
set wildmenu
set termguicolors
set encoding=utf8

augroup compileandrun
    autocmd!
    autocmd filetype python nnoremap <f5> :w <bar> :!python3 % <cr>
    autocmd filetype cpp nnoremap <c-z> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
    autocmd filetype c nnoremap <c-z> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
    autocmd filetype java nnoremap <c-z> :w <bar> !javac % && java %:r <cr>
augroup END

hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
