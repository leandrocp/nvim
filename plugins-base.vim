"{{{ Base }}}
Plug 'tpope/vim-sensible'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/LargeFile'

"{{{ Exec / External }}}
Plug 'thinca/vim-quickrun'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
  nnoremap <silent> <leader>gs :Gstatus<CR>
  nnoremap <silent> <leader>gd :Gdiff<CR>
  nnoremap <silent> <leader>gc :Gcommit<CR>
  nnoremap <silent> <leader>gb :Gblame<CR>
  nnoremap <silent> <leader>gl :Glog<CR>
  nnoremap <silent> <leader>gp :Git push<CR>
  nnoremap <silent> <leader>gw :Gwrite<CR>
  nnoremap <silent> <leader>gr :Gremove<CR>
  autocmd FileType gitcommit nmap <buffer> U :Git checkout -- <C-r><C-g><CR>
  autocmd BufReadPost fugitive://* set bufhidden=delete
Plug 'rizzatti/dash.vim'
  nmap <silent> <leader>d <Plug>DashSearch

"{{{ Visual }}}
Plug 'myusuf3/numbers.vim'
Plug 'matchit.zip'
Plug 'Valloric/MatchTagAlways'
  let g:mta_filetypes = {
      \ 'html' : 1,
      \ 'html.handlebars' : 1,
      \ 'handlebars' : 1,
      \ 'hbs' : 1,
      \ 'xml' : 1
      \}
Plug 'nathanaelkane/vim-indent-guides'
  let g:indent_guides_guide_size = 1
Plug 'airblade/vim-gitgutter'

"{{{ Text Edit / Manipulation }}}
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'rhysd/vim-textobj-ruby'
Plug 'mjbrownie/html-textobjects'
Plug 'tpope/vim-endwise'
Plug 'junegunn/vim-easy-align'
  vmap <Enter> <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-expand-region'
  let g:expand_region_text_objects_ruby = {
      \ 'im' :0,
      \ 'am' :0,
      \ 'ir' :0,
      \ 'ar' :0,
      \ }
  map K <Plug>(expand_region_expand)
  map J <Plug>(expand_region_shrink)

"{{{ Languages }}}
Plug 'sheerun/vim-polyglot'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'vim-ruby/vim-ruby'
  let g:ruby_indent_access_modifier_style = "indent"
Plug 'elixir-lang/vim-elixir'
Plug 'mustache/vim-mustache-handlebars' "{{{
  let g:mustache_abbreviations = 1
"}}}

"{{{ Themes }}}
Plug 'chriskempson/base16-vim'

"{{{ Search / Replace }}}
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
  if executable('ag')
    let g:ackprg = 'ag --nogroup --nocolor --column'
  endif


"{{{ IDE like }}}
Plug 'scrooloose/nerdtree' | Plug 'cespare/vim-sbd' | Plug 'Xuyuanp/nerdtree-git-plugin'
  map <leader>t :NERDTreeToggle<CR>
  map <leader>e :NERDTreeFind<CR>
  nnoremap <silent> <leader>q :Sbd<CR>
  nnoremap <silent> <leader>qq :Sbdm<CR>
  let NERDTreeIgnore     = ['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
  let NERDTreeShowHidden = 1
  let NERDTreeMinimalUI  = 1
  let NERDTreeWinPos     = "right"
  let NERDTreeWinSize    = 40
  let NERDTreeDirArrows  = 1
Plug 'ervandew/supertab' "{{{
  let g:SuperTabDefaultCompletionType = "<c-n>"
Plug 'bling/vim-airline' "{{{
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_theme              = 'base16'
  let g:airline_left_sep           = '›'
  let g:airline_right_sep          = '‹'
  let g:airline_symbols.paste      = 'ρ'
  let g:airline_symbols.whitespace = 'Ξ'
  let g:airline_symbols.branch     = '⎇ '
  let g:airline#extensions#tabline#enabled         = 1
  let g:airline#extensions#tabline#left_sep        = ' '
  let g:airline#extensions#tabline#left_alt_sep    = ' '
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  let g:airline#extensions#tabline#formatter       = 'unique_tail'
  let g:airline#extensions#bufferline#enabled      = 0
  let g:airline#extensions#virtualenv#enabled      = 0
  let g:airline#extensions#eclim#enabled           = 0
  let g:airline#extensions#nrrwrgn#enabled         = 0
  let g:airline#extensions#capslock#enabled        = 0
  let g:airline#extensions#windowswap#enabled      = 0
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
Plug 'ludovicchabant/vim-gutentags'
  let g:gutentags_ctags_executable = 'ctags --fields=+l'
"Plug 'scrooloose/syntastic' "{{{
"  set statusline+=%#warningmsg#
"  set statusline+=%{SyntasticStatuslineFlag()}
"  set statusline+=%*
"  let g:syntastic_shell = "/usr/local/bin/zsh"
"  let g:syntastic_enable_elixir_checker = 1
"  let g:syntastic_elixir_checkers = ['elixir']
"  let g:syntastic_ruby_checkers = ['rubocop', 'mri']
"  let g:syntastic_javascript_checkers = ['jshint', 'jscs']
"}}}
Plug 'osyo-manga/vim-watchdogs' | Plug 'osyo-manga/shabadou.vim'
Plug 'kien/ctrlp.vim' "{{{
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ --ignore node_modules
      \ --ignore bower_components
      \ -g ""'
  let g:ctrlp_cmd                    = 'CtrlPCurWD'
  let g:ctrlp_use_caching            = 0
  let g:ctrlp_clear_cache_on_exit    = 1
  let g:ctrlp_max_height             = 60
  let g:ctrlp_show_hidden            = 0
  let g:ctrlp_follow_symlinks        = 1
  let g:ctrlp_working_path_mode      = 'ra'
  let g:ctrlp_max_files              = 20000
  let g:ctrlp_cache_dir              = '~/.nvim/.cache/ctrlp'
  let g:ctrlp_reuse_window           = 'startify'
  let g:ctrlp_extensions             = ['funky']
  let g:ctrlp_funky_syntax_highlight = 1
  let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git\|\.hg\|\.svn\|node_modules\|bower_components\|dist\|target\|DS_Store\|tmp\|plugged\|_build\|deps\',
  \ 'file': '\.jpg$\|\.exe$\|\.so$\|tags$\|\.dll$'
  \ }
  nnoremap <Leader>o :CtrlPCurWD<CR>
  nnoremap <Leader>b :CtrlPBuffer<Cr>
