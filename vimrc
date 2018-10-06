" Pathogen Runtime Path Manipulation
execute pathogen#infect()

" Airline Theme
let g:airline_solarized_bg='dark'

" Solarized Dark Theme
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

" NERDtree Settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let NERDTreeShowHidden=1

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" Key Mappings
nmap <F6> :NERDTreeToggle<CR>

" Other Settings
filetype plugin on
filetype indent on

  " Files
  set confirm
  set noautowrite
  set nobackup
  set undodir=$HOME/.vim/undo/
  set undofile
  set undolevels=500
  set undoreload=10000

  " Folding
  set foldcolumn=0
  set foldmethod=indent
  set foldnestmax=10
  set foldlevelstart=99

  " Matching
  set matchtime=2
  set matchpairs+=<:>
  set showmatch

  " Searching
  set gdefault
  set ignorecase
  set incsearch
  set hlsearch

  " Text formatting
  set cinkeys-=0#
  set expandtab
  set ignorecase
  set nrformats+=alpha
  set shiftround
  set shiftwidth=2
  set smartcase
  set tabstop=2

  " Wild
  set wildignore+=*.bak,*.swp,*.swo
  set wildignore+=*.a,*.o,*.so,*.pyc,*.class
  set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.pdf
  set wildignore+=*/.git*,*.tar,*.zip
  set wildmode=longest:full,list:full

  " Word Wrapping
  set wrap
  set linebreak
  set nolist
  set textwidth=0
  set wrapmargin=0

set cursorline
set hidden
set more
set noexrc
set noshowmode
set nostartofline
set number
set showcmd
set splitbelow
set splitright
set title
set ttyfast

set completeopt=menu,preview,longest
set history=1000
set mouse=a
set numberwidth=5
set vb t_vb=

set shortmess+=I

