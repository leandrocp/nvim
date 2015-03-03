Plug 'tpope/vim-sensible'
Plug 'tpope/vim-dispatch'
Plug 'tomtom/tlib_vim'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-repeat'
Plug 'gorodinskiy/vim-coloresque'

"{{{ Themes
Plug 'chriskempson/base16-vim'
Plug 'whatyouhide/vim-gotham'
"}}}

Plug 'Shougo/unite.vim'

Plug 'bling/vim-airline' "{{{
  " extensions
  let g:airline#extensions#tabline#enabled         = 1
  let g:airline#extensions#tabline#left_sep        = ' '
  let g:airline#extensions#tabline#left_alt_sep    = ' '
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  let g:airline#extensions#tabline#fnamemod        = ':p:.'
   let g:airline#extensions#tabline#fnamecollapse  = 0
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9

  let g:airline#extensions#bufferline#enabled = 0
  let g:airline#extensions#csv#enabled        = 0
  let g:airline#extensions#virtualenv#enabled = 0
  let g:airline#extensions#eclim#enabled      = 0
  let g:airline#extensions#nrrwrgn#enabled    = 0
  let g:airline#extensions#capslock#enabled   = 0
  let g:airline#extensions#windowswap#enabled = 0

  let g:airline_theme             = 'hybrid'
  let g:airline_left_sep          = '»'
  let g:airline_right_sep         = '«'
  let g:airline_linecolumn_prefix = '¶'
  let g:airline_branch_prefix     = 'B'
  let g:airline_paste_symbol      = 'ρ'
  let g:airline_whitespace_symbol = 'Ξ'
"}}}

Plug 'mhinz/vim-signify' "{{{
  let g:signify_vcs_list = [ 'git', 'svn' ]
"}}}

Plug 'scrooloose/nerdtree'
  let g:NERDTreeWinPos  = 'left'
  let g:NERDTreeWinSize = 40
  let g:NERDTreeIgnore  = ['\.git','\.hg']
  nnoremap <Leader>t :NERDTreeToggle<CR>
  nnoremap <Leader>f :NERDTreeFocus<CR>
"}}}

Plug 'Valloric/YouCompleteMe', { 'do': 'bash ~/.nvim/plugged/YouCompleteMe/install.sh' }

Plug 'kien/ctrlp.vim', { 'depends': 'tacahiroy/ctrlp-funky' } "{{{
  let g:ctrlp_cmd                    = 'CtrlPCurWD'
  let g:ctrlp_clear_cache_on_exit    = 1
  let g:ctrlp_max_height             = 60
  let g:ctrlp_show_hidden            = 0
  let g:ctrlp_follow_symlinks        = 1
  let g:ctrlp_working_path_mode      = 'ra'
  let g:ctrlp_max_files              = 20000
  let g:ctrlp_cache_dir              = '~/.vim/.cache/ctrlp'
  let g:ctrlp_reuse_window           = 'startify'
  let g:ctrlp_extensions             = ['funky']
  let g:ctrlp_funky_syntax_highlight = 1
  let g:ctrlp_custom_ignore          = 'node_modules\|bower_components\|target\|DS_Store\|git|tmp\'
  nnoremap <C-o> :CtrlPBuffer<Cr>
  nnoremap <C-m> :CtrlPFunky<Cr>
"}}}

Plug 'EasyGrep' "{{{
  let g:EasyGrepRecursive              = 1
  let g:EasyGrepAllOptionsInExplorer   = 1
  let g:EasyGrepCommand                = 1
  nnoremap <leader>vo :GrepOptions<cr>
"}}}

Plug 'godlygeek/tabular' "{{{
  nnoremap <leader>a <ESC>:Tabularize /
  vmap <leader>a :Tabularize /
"}}}

Plug 'sjl/gundo.vim' "{{{
  nnoremap <F5> :GundoToggle<CR>
"}}}

Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar' "{{{
  nmap <F8> :TagbarToggle<CR>
"}}}
