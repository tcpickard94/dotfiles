call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  Plug 'kien/ctrlp.vim'
  Plug 'raimondi/delimitmate'
  Plug 'othree/html5.vim'
  Plug 'rstacruz/sparkup'
  Plug 'scrooloose/syntastic'
  Plug 'peterrincker/vim-argumentative'
  Plug 'pangloss/vim-javascript'
  Plug 'elzr/vim-json'
  Plug 'tpope/vim-markdown'
  Plug 'vim-ruby/vim-ruby'
  Plug 'junegunn/vim-easy-align'
  Plug 'tpope/vim-surround'
  Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
  Plug 'moll/vim-node'
  Plug 'mxw/vim-jsx'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'valloric/youcompleteme'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'tpope/vim-fugitive'
  Plug 'mileszs/ack.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'garbas/vim-snipmate'
  Plug 'marcweber/vim-addon-mw-utils'
  Plug 'honza/vim-snippets'
  Plug 'tomtom/tlib_vim'
  Plug 'justinj/vim-react-snippets'
  Plug 'keith/swift.vim'
call plug#end()

" Abbreviations
abbrev funciton function

syntax on                         " enable syntax processing
filetype off                      " required
filetype indent on                " load filetype-specific indent files
filetype plugin indent on         " required


set noerrorbells                  " error bells
set visualbell
set t_vb=
set tm=500
set nocompatible                  " be iMproved, required
set encoding=utf-8                " sets default encoding to UTF-8
set tabstop=2                     " width of a tab is set to 2
set shiftwidth=2                  " indents will have a width of 2
set softtabstop=2                 " number of columns per tab is 2
set expandtab                     " tabs are spaces
set number                        " show line numbers
set showcmd                       " show last command in bottom bar
set cursorline                    " highlight current line
set wildmenu                      " visual autocomplete for command menu
set lazyredraw                    " redraw only when needed
set foldmethod=indent             " Enable folding
set foldlevel=99
set incsearch                     " search as characters are entered
set hlsearch                      " highlight search results
set ruler                         " display column and line number
set autoread                      " automatically refresh files
set backupdir=$TMPDIR             " add backup files to temp directory
set directory=$TMPDIR             " add temp files to temp directory
set laststatus=2                  " set statusline to appear all the time
set clipboard=unnamed             " use system clipboard
set linebreak                     " break at spaces

" move vertically by visual line
nnoremap j gj
nnoremap k gk

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" double space to remove highlights after search
nnoremap <space><space> :noh<cr>

" remap ; to : in normal mode to save pressing shift
nnoremap ; :

" remap single quote to back tick for marks
nnoremap ' `

" remap leader key to `
let mapleader = "`"

" map \ne to open nerdtree with the current directory
nmap <leader>ne :NERDTree<cr>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" use the . command in visual mode
vmap . :normal.<cr>

imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" bind ? to grep word under cursor
nnoremap ? :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" map defintion searches to gd
nnoremap gd :YcmCompleter GoTo<CR>
nnoremap <leader>gd :YcmCompleter GoToReferences<CR>

" Use ,d to delete a line without adding it to the
" yanked stack (also, in visual mode)
nnoremap <silent> <leader>d "_d
vnoremap <silent> <leader>d "_d

" Jump to matching pairs easily, with Tab
nnoremap <Tab> %
vnoremap <Tab> %

" Use shift-H and shift-L for move to beginning/end
nnoremap H 0
nnoremap L $
vnoremap H 0
vnoremap L $

" Quick yanking to the end of the line
nnoremap Y y$

" quick function reindent
vnoremap g a{=<C-o>

"  use jshint or eslint
" let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
" show any linting errors immediately
let g:syntastic_check_on_open = 1
" ignore angular js and ionic
let g:syntastic_html_tidy_ignore_errors=["<ion-", "discarding unexpected </ion-", " proprietary attribute \"ng-"]

" ignore node-modules with ctrl-p
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|www\|bower_components'

" autoclose scratch preview window with youcompleteme
let g:ycm_autoclose_preview_window_after_completion = 1

" jsx syntax highlighting enabled for .js files
let g:jsx_ext_required = 0

" enable tern keyboard shortcuts
let g:tern_map_keys=1

" enable vim-airline
let g:airline#extensions#tabline#enabled = 1
" set airline theme
let g:airline_theme='sol'

 " Allow JSX in normal JS files
let g:jsx_ext_required = 0

" Show hidden files in NerdTree by default
let NERDTreeShowHidden=1

" Use ag with ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind \ (backward slash) to grep shortcut
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

" use single leader for easymotion
map <Leader> <Plug>(easymotion-prefix)
