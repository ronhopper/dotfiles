call pathogen#infect()
set nocompatible
set background=dark

"Set colorscheme with options
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"colorscheme solarized         "use a colorscheme that's cli friendly

set hidden
set history=1000
set wildmenu
set wildmode=list:longest,full
set ignorecase
set smartcase
set scrolloff=3
set nobackup
set nowritebackup
set noswapfile
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set showmatch
set incsearch
set hlsearch
set showcmd
set showmode
set nowrap
set linebreak
set backspace=indent,eol,start
set cmdheight=2
set shell=/bin/sh
set ofu=syntaxcomplete#Complete
set listchars=tab:→.,trail:•,nbsp:%
set list
set shortmess=atI
set visualbell
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ \ \ \ \ \ \ \ \ \ \ \ [POS=%2l,%2v][%p%%]\ \ \ \ \ \ \ \ \ \ \ \ [LEN=%L]
set laststatus=2
let mapleader=","
syntax on
filetype plugin indent on

augroup FTCheck
  au Bufenter *.clj setfiletype clojure
  au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru}    set ft=ruby
augroup END

augroup RubyOpts
  autocmd FileType ruby,haml,eruby,yaml,ru  set ai sw=2 sts=2 et
  autocmd FileType ruby,eruby               set omnifunc=rubycomplete#Complete
  autocmd FileType ruby,eruby               let g:rubycomplete_buffer_loading = 1
  autocmd FileType ruby,eruby               let g:rubycomplete_rails = 1
  autocmd FileType ruby,eruby               let g:rubycomplete_classes_in_global = 1
  autocmd FileType ruby,eruby               map <Leader>h :%s/:\(\w\+\) =>/\1:/g<CR>
  autocmd BufNewFile,BufRead *_spec.rb compiler rspec
augroup END

" Make omnicomplete a bit easier
imap <Leader>o <C-x><C-o>

" Make ',e' (in normal mode) give a prompt for opening files
" in the same dir as the current buffer's file.
cnoremap %% <C-R>=expand("%:h")<cr>/
map <leader>e :e %%
map <leader>a :tabe %%
map <leader>n :Rename %%
map <leader>k :!mkdir %%

