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
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set hidden
set fileformats=unix,dos
set fileformat=unix
syntax on

" ================ Search Settings  =================
set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks
set ignorecase       " ignore case when searching

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
set nostartofline          " don't jump to the start of line when scrolling
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Filetypes ============================
au BufRead,BufNewFile *.TMP set filetype=sql
autocmd BufRead,BufNewFile *.txt setlocal wrap linebreak
autocmd Filetype gitcommit setlocal spell textwidth=72
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

" ================ UI ============================
set showmatch              " brackets/braces that is
set shortmess=atI          " Don’t show the intro message when starting Vim

" ================ Folds ============================
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
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
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Mappings ========================
" TODO: Move to specific pluggin dir
imap jj <Esc>
nnoremap <C-k> :MBEbn<CR>
nnoremap <C-j> :MBEbp<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFocus<CR>
for buffer_no in range(1, 9)
  execute "nmap <F" . buffer_no . "> :b" . buffer_no . "\<CR>"
endfor
" nnoremap <C-n> :m .+1<CR>==
" nnoremap <C-m> :m .-2<CR>==
" inoremap <C-n> <Esc>:m .+1<CR>==gi
" inoremap <C-m> <Esc>:m .-2<CR>==gi
" vnoremap <C-n> :m '>+1<CR>gv=gv
" vnoremap <C-m> :m '<-2<CR>gv=gv
let g:ctrlp_cmd = 'CtrlPCurWD'
nnoremap <leader>q :bp<cr>:bd #<cr> " Close current buffer
nnoremap <leader><leader> <c-^> " Switch between the last two files
noremap <CR> :nohlsearch<CR> " hit enter to cancel searched highlight
