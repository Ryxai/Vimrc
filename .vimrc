syntax enable
filetype off

"Tabs > Spaces but plebians must be dealt with
set tabstop=4
set softtabstop=4
set expandtab

"Number/Jumping/Matching and General Behavior
set number
set relativenumber
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set nowrap

"Handling folds
set foldenable
set foldlevelstart=99
set foldnestmax=99
set foldmethod=indent

"IMproved
set nocompatible

"Enable Airline
set laststatus=2
set noshowmode

"Highlighting
set cursorline

set cursorcolumn
set colorcolumn=80



"Plugins and Plugin Management
inoremap jj <Esc>
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'Shougo/neocomplete'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'idris-hackers/idris-vim'
Plugin 'honza/vim-snippets'
Plugin 'sirver/ultisnips'
Plugin 'tpope/vim-markdown'
Plugin 'vim-latex/vim-latex'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf'
Plugin 'flazz/vim-colorschemes'
Plugin 'zah/nim.vim'
Plugin 'mmai/vim-zenmode'
Plugin 'lu-ren/SerialExperimentsLain'
Plugin 'nightsense/vim-crunchbang'
Plugin 'easymotion/vim-easymotion'
Plugin 'zacanger/angr.vim'
Plugin 'kamwitsta/nordisk'
Plugin 'kamwitsta/mythos'
Plugin 'vim-scripts/wombat256.vim'
Plugin 'baskerville/bubblegum'
Plugin 'KevinGoodsell/vim-csexact'
call vundle#end()
filetype plugin indent on

"Enable nerdtree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Manual handling of nerdtree toggle
map <space><leader> :NERDTreeToggle<CR>

"Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"No Gui Elements for Gvim
:set guioptions-=M "Remove menu bar
:set guioptions-=T "Remove the toolbar
:set guioptions-=r "Remove right-hand scroll bar
:set guioptions-=L "Remove left-hand scroll bar

"Colortheme for airline
let g:airline_theme='bubblegum'

"Colorscheme magic to pick a better scheme for GUI version
colorscheme mythos

"Disable autcomplete popup
let g:acp_enableAtStartup = 0

"Turning on neocomplete by default
let g:neocomplete#enable_at_startup = 1
let g:neocmplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_word_length = 3

"Neocomplete keymappings
inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#source#omni#input_patterns = {}
endif

"Tab filetype handling                                                          
autocmd FileType idris setlocal ts=2 sts=2                                      
autocmd FileType python setlocal ts=2 sts=2   

