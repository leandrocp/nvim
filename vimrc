" vimrc config

" =============== Vundle ===============
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'leandrocp/vundle'
source ~/.vim/bundlesrc
filetype plugin indent on

" =============== Win32 ===============
if has('win32') || has('win64')
  set runtimepath+=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
  source ~/.mswinrc
  behave mswin
endif

" ================ Theme ====================
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-tomorrow
set t_Co=256
set encoding=utf-8
let g:Powerline_symbols="fancy"

" ================ General Config ====================
let mapleader = " "
set number                     " Line numbers are good
set backspace=indent,eol,start " Allow backspace in insert mode
set history=1000               " Store lots of :cmdline history
set showcmd                    " Show incomplete cmds down the bottom
set showmode                   " Show current mode down the bottom
set visualbell                 " No sounds
set autoread                   " Reload files changed outside vim
set hidden
set fileformats=unix,dos
set fileformat=unix
set clipboard=unnamed          " Yank,delete,etc to clipboard
set mouse=a
set ttyfast
syntax on

" ================ Search Settings  =================
set incsearch       " Find the next match as we type the search
set hlsearch        " Hilight searches by default
set viminfo='100,f1 " Save up to 100 marks, enable capital marks
set ignorecase      " ignore case when searching
set gdefault        " global default on
noremap <CR> :nohlsearch<CR> " hit enter to cancel searched highlight

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set nostartofline " don't jump to the start of line when scrolling
set nowrap        " Don't wrap lines
set linebreak     " Wrap lines at convenient points

" ================ Filetypes ============================
au BufRead,BufNewFile *.TMP set filetype=sql
autocmd BufRead,BufNewFile *.txt setlocal wrap linebreak
autocmd Filetype gitcommit setlocal spell textwidth=72    " git commit max 72 cols
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0]) " git commit start on first line
augroup vimrcEx
  au!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup END
"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" ================ UI ============================
set showmatch     " brackets/braces that is
set shortmess=atI " Don’t show the intro message when starting Vim

" ================ Folds ============================
set foldmethod=indent " fold based on indent
set foldnestmax=3     " deepest fold is 3 levels
set nofoldenable      " dont fold by default

" ================ Completion =======================
set wildmode=list:longest
set wildmenu                  " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~   " stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================
set scrolloff=8      " Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Mappings ========================
cmap w!! %!sudo tee > /dev/null %
imap jj <Esc>
nnoremap <leader>w :w<cr>
nnoremap <leader>W :wq<cr>
nnoremap <leader>q :bp<cr>:bd #<cr> " Close current buffer
nnoremap <leader><leader> <c-^>     " Switch between the last two files
" Paste mode - http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
au FocusLost * :wa

" ================ Split Windows ====================
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <silent> <Leader>= :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

