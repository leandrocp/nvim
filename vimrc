" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0

set all& "reset everything to their defaults
set nocompatible "vim

" detect OS {{{
  let s:is_windows = has('win32') || has('win64') || has('win32unix')
  let s:is_macvim = has('gui_macvim')
"}}}

" windows {{{
  if s:is_windows
    set rtp+=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    "source $HOME/.mswinrc
    "behave mswin
  endif
"}}}

" setup & neobundle {{{
  set rtp+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
"}}}

" functions {{{
  function! EnsureExists(path) "{{{
    if !isdirectory(expand(a:path))
      call mkdir(expand(a:path))
    endif
  endfunction "}}}
"}}}

" base {{{
  let mapleader=" "
  let g:mapleader=" "
  set encoding=utf-8                                  "set encoding for text
  set timeoutlen=300                                  "mapping timeout
  set ttimeoutlen=50                                  "keycode timeout
  set mouse=a                                         "enable mouse
  set mousehide                                       "hide when characters are typed
  set history=1000                                    "number of command lines to remember
  set ttyfast                                         "assume fast terminal connection
  set viewoptions=folds,options,cursor,unix,slash     "unix/windows compatibility
  set hidden                                          "allow buffer switching without saving
  set autoread                                        "auto reload if file saved externally
  set fileformats+=mac                                "add mac to auto-detection of file format line endings
  set fileformat=unix                                 "default file format
  set nrformats-=octal                                "always assume decimal numbers
  set showcmd
  set tags=tags;/
  set showfulltag
  set modeline
  set modelines=5
  " disable annoying sounds
  set noerrorbells
  set novisualbell
  set t_vb=
  set display+=lastline
  " clipboard
  "if exists('$TMUX')
    "set clipboard=
  "else
    "set clipboard=unnamed                             "sync with OS clipboard
  "endif
  set clipboard=unnamed
"}}}

" ui {{{
  set showmatch                                       "automatically highlight matching braces/brackets/etc.
  set matchtime=2                                     "tens of a second to show matching parentheses
  set relativenumber                                  "hybrid line numbers
  set number                                          "line numbers are good
  set lazyredraw
  set laststatus=2
  set showmode
  set nofoldenable                                    "don´t enable folds by default
  set foldmethod=syntax                               "fold via syntax of files
  set foldlevelstart=99                               "open all folds by default
  let g:xml_syntax_folding=1                          "enable xml folding
  set scrolloff=8                                     "always show content after scroll
  set sidescrolloff=15
  set sidescroll=1
  set splitbelow
  set splitright
  set cursorline
  autocmd WinLeave * setlocal nocursorline
  autocmd WinEnter * setlocal cursorline
  let &colorcolumn=120

  if has('gui_running')
    " open maximized
    set lines=999 columns=9999
    set guioptions+=t                                 "tear off menu items
    set guioptions-=T                                 "toolbar icons

    if s:is_windows
      autocmd GUIEnter * simalt ~x
    endif

    if s:is_macvim
      "set gfn=Ubuntu_Mono:h14
      "set transparency=2
    endif

    if s:is_windows
      "set gfn=Ubuntu_Mono:h10
    endif

    if has('gui_gtk')
      "set gfn=Ubuntu\ Mono\ 11
    endif
  else
    set t_Co=256 "why you no tell me correct colors?!?!
    if $TERM_PROGRAM == 'iTerm.app'
      if exists('$TMUX')
        let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
      else
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
      endif
    endif
  endif
"}}}

" search {{{
  set hlsearch                                        "highlight searches
  set incsearch                                       "incremental searching
  set ignorecase                                      "ignore case for searching
  set smartcase                                       "do case-sensitive if there's a capital letter
  set gdefault                                        "global default on
  "noremap <CR> :nohlsearch<CR>
  if executable('ack')
    set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
    set grepformat=%f:%l:%c:%m
  endif
  if executable('ag')
    set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
    set grepformat=%f:%l:%c:%m
  endif
"}}}

" files/folders {{{
  set undofile
  set undodir=~/.vim/.cache/undo
  set backup
  set backupdir=~/.vim/.cache/backup
  set directory=~/.vim/.cache/swap
  set noswapfile
  call EnsureExists('~/.vim/.cache')
  call EnsureExists(&undodir)
  call EnsureExists(&backupdir)
  call EnsureExists(&directory)
"}}}

" indent/whitespace {{{
  set backspace=indent,eol,start                      "allow backspacing everything in insert mode
  set autoindent
  set smartindent
  set smarttab                                        "use shiftwidth to enter tabs
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set expandtab                                       "spaces instead of tabs
  set nostartofline                                   "don't jump to the start of line when scrolling
  set nowrap                                          "don't wrap lines
  set linebreak                                       "wrap lines at convenient points
  ""set list                                            "highlight whitespace
  "set listchars=tab:│\ ,trail:•,extends:❯,precedes:❮
  set shiftround
  set linebreak
  "let &showbreak='↪ '
"}}}

" ignore/complete {{{
  "set wildmenu                                        "show list for autocomplete
  "set wildmode=list:full
  "set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store
  "set wildignore=*.o,*.obj,*~
  "set wildignore+=*sass-cache*
  "set wildignore+=*.gem
  "set wildignore+=log/**
  "set wildignore+=tmp/**
  "set wildignore+=*.png,*.jpg,*.gif
"}}}

" mappings/autocmd {{{
  source ~/.vim/mappings.vim

  " go back to previous position of cursor if any
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \  exe 'normal! g`"zvzz' |
    \ endif

  autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
  autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
  au BufRead,BufNewFile *.md set filetype=markdown
"}}}

" finish loading {{{
  filetype plugin indent on
  syntax enable
  if s:is_windows
    source ~/.vim/plugins_win.vim
  else
    source ~/.vim/plugins_nix.vim
  endif
  NeoBundleCheck
"}}}

" theme {{{
set background=dark
let base16colorspace=256                              "access colors present in 256 colorspace
colorscheme base16-default
"}}}

