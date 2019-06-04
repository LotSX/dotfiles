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
call togglebg#map("<F5>")

" Emmet Settings
autocmd FileType html,css EmmetInstall

let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0

" Incsearch Settings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

let g:incsearch#auto_nohlsearch = 1

" NERDcommenter Settings
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" NERDtree Settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let NERDTreeRespectWildIgnore=1
let NERDTreeShowHidden=1
nmap <F6> :NERDTreeToggle<CR>

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['flake8', 'pylint']
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

" Tagbar Settings
nmap <F8> :TagbarToggle<CR>

let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }

" tstags
let g:tagbar_type_typescript = {
  \ 'ctagsbin' : 'tstags',
  \ 'ctagsargs' : '-f-',
  \ 'kinds': [
    \ 'e:enums:0:1',
    \ 'f:function:0:1',
    \ 't:typealias:0:1',
    \ 'M:Module:0:1',
    \ 'I:import:0:1',
    \ 'i:interface:0:1',
    \ 'C:class:0:1',
    \ 'm:method:0:1',
    \ 'p:property:0:1',
    \ 'v:variable:0:1',
    \ 'c:const:0:1',
  \ ],
  \ 'sort' : 0
\ }

" Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_highlighting_cache = 1

" Easymotion Settings
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

nmap s <Plug>(easymotion-overwin-f2)

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
  set wildignore+=node_modules
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

set backspace=indent,eol,start
set completeopt=menu,preview,longest
set colorcolumn=100
set history=1000
set mouse=a
set numberwidth=5
set vb t_vb=
set shortmess+=I
