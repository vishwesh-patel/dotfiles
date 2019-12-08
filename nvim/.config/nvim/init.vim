" Plugins
call plug#begin('~/.local/share/nvim/site/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'shougo/deoplete.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'powerline/powerline'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'zchee/deoplete-clang'


call plug#end()

" basics
set nocompatible            " Disable compatibility to old-time vim
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=0                  " set an 80 column border for good coding style
set number relativenumber
colo nord
let g:airline_theme='nord'


" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

" completions
let g:deoplete#enable_at_startup = 1

" mappings
" movement
inoremap <Space><Space> <Esc>/<++><Enter>"_c4l

" external opens
map <C-T> :split<Bar>resize<Space>15<Bar>terminal<CR>
map <C-N> :NERDTree<CR>
nnoremap <M-U> :GundoToggle<CR>

" Tab and window movement
map <C-Up> <C-W><Up>
map <C-Down> <C-W><Down>
map <C-Left> <C-W><Left>
map <C-Right> <C-W><Right>
map <M-1> 1gt
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt
map <M-9> 9gt
map <M-Right> gt
map <M-Left> gT

" C++ basics maps
autocmd FileType cpp inoremap ;start #include<Space><iostream><Enter><Enter>int<Space>main();<Enter><Enter>int<Space>main(){<Enter><++><Enter>}
autocmd FileType cpp inoremap ;c std::cout<Space><<<Space><++><Space><<<Space>std::endl;<++>
autocmd FileType cpp inoremap ;f for<Space>(<++>;<Space><++>;<Space><++>){<Enter><++><Enter>}<++>
autocmd FileType cpp inoremap ;w while<Space>(<++>){<Enter><++><Enter>}<++>
autocmd FileType cpp inoremap ;i if<Space>(<++>){<Enter><++><Enter>}<++>
autocmd FileType cpp inoremap ;ei else<Space>if<Space>(<++>){<Enter><++><Enter>}<++>
autocmd FileType cpp inoremap ;e else{<Enter><++><Enter>}<++>

" HTML Basics maps
autocmd FileType html inoremap ;start <html><Enter><head><Enter><body><Enter></body><Enter></head><Enter></html>
autocmd FileType html inoremap ;1 <h1><++></h1>
autocmd FileType html inoremap ;2 <h2><++></h2>
autocmd FileType html inoremap ;3 <h3><++></h3>
autocmd FileType html inoremap ;4 <h4><++></h4>
autocmd FileType html inoremap ;5 <h5><++></h5>
autocmd FileType html inoremap ;6 <h6><++></h6>
autocmd FileType html inoremap ;p <p><++></p>
autocmd FileType html inoremap ;b <b><++></b>
autocmd FileType html inoremap ;l <label><++></label>
