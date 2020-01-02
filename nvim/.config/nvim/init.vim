"
" ----            ----   ----------------   ------    ------
"  \  \          /  /    ----------------   |     \  /     |
"   \  \        /  /           |  |         |  |\  \/  /|  |
"    \  \      /  /            |  |         |  | \    / |  |
"     \  \    /  /             |  |         |  |  ----  |  |
"      \  \  /  /              |  |         |  |        |  |
"       \  \/  /         ----------------   |  |        |  |
"        ------          ----------------   |  |        |  |
"


"                                                /---------------------/
" ---------------------------------------------- /       PLUGINS       / ----------------------------------------------
"                                                /---------------------/

    call plug#begin('~/.local/share/nvim/site/plugged')

        Plug 'scrooloose/nerdtree'               " File mananger within vim (appears in tree format)
        Plug 'vim-airline/vim-airline'           " Vim status bar
        Plug 'vim-airline/vim-airline-themes'    " Themes for vim airline status bar
        Plug 'scrooloose/syntastic'              " Syntax checker for vim
        Plug 'powerline/powerline'               " Font for powerline theme in airline status bar (I THINK???)
        Plug 'arcticicestudio/nord-vim'          " Nord colorscheme for vim

        "Plug 'majutsushi/tagbar'
            
        "Plug 'shougo/deoplete.nvim'
        
        "Plug 'tpope/vim-fugitive'
        
        "Plug 'zchee/deoplete-clang'

    call plug#end()



"                                                /--------------------/
" ---------------------------------------------- / VIM BASIC SETTINGS / ----------------------------------------------
"                                                /--------------------/

    set nocompatible                             " Disable compatibility to old-time vim
    set showmatch                                " Show matching brackets.
    set ignorecase                               " Do case insensitive matching
    set mouse=v                                  " Middle-click paste with mouse
    set hlsearch                                 " Highlight search results
    set tabstop=4                                " Number of columns occupied by a tab character
    set softtabstop=4                            " See multiple spaces as tabstops so <BS> does the right thing
    set expandtab                                " Converts tabs to white space
    set shiftwidth=4                             " Width for autoindents
    set autoindent                               " Indent a new line the same amount as the line just typed
    set number relativenumber                    " Add relative line numbers
    set wildmode=longest,list                    " Get bash-like tab completions
    set cc=0                                     " Set an 80 column border for good coding style
    

    colo nord                                    " Set vim colorscheme
    let g:airline_theme='nord'                   " Set vim arline colorscheme



"                                                /--------------------/
" ---------------------------------------------- /     VIM AIRLINE    / ----------------------------------------------
"                                                /--------------------/

    " ENABLE POWERLINE FONTS
    let g:airline_powerline_fonts = 1

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " UNICODE SYMBOLS FOR AIRLINE STATUSES
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

    " UNICODE SYMBOLS FOR POWERLINE EFFECT
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''

    " TABLINE UNICODE SYMBOLS
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#left_alt_sep = ''



"                                                /--------------------/
" ---------------------------------------------- /       MAPPINGS     / ----------------------------------------------
"                                                /--------------------/

    " CONTROL KEY

        " NERDtree
        map <C-N> :NERDTree<CR>
        
        " SPLIT NAVIGATION
        map <C-Up> <C-W><Up>
        map <C-Down> <C-W><Down>
        map <C-Left> <C-W><Left>
        map <C-Right> <C-W><Right>


    " ALT KEY

        " TAB NAVIGATION (NOTE: CHANGE TO BUFFERS SOON)
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


    "LEADER KEY



