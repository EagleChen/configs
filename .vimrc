set nocompatible
syntax enable
filetype plugin on
filetype indent on
set shortmess=atI
set nu
set showcmd
set showmatch
set nobackup
set nowb
set noswapfile
set si
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set ruler
set cursorline
color desert

"" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter

set clipboard=unnamed


"" neo auto complete
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
