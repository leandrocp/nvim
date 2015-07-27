Plug 'tpope/vim-sensible'
Plug 'tpope/vim-dispatch'
Plug 'tomtom/tlib_vim'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'vim-scripts/LargeFile'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'myusuf3/numbers.vim'

"{{{ Themes
Plug 'chriskempson/base16-vim'
"}}}

Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim' "{{{
  if executable('ag')
    let g:ackprg = 'ag --nogroup --nocolor --column'
  endif
"}}}

Plug 'scrooloose/nerdtree' | Plug 'cespare/vim-sbd' "{{{
  map <leader>t :NERDTreeToggle<CR>
  map <leader>e :NERDTreeFind<CR>
  nnoremap <silent> <leader>q :Sbd<CR>
  nnoremap <silent> <leader>qq :Sbdm<CR>

  let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
  let NERDTreeShowHidden=1
  let NERDTreeMinimalUI=1
  let NERDTreeWinPos="right"
  let NERDTreeWinSize=40
  let NERDTreeDirArrows=1
"}}}

Plug 'christoomey/vim-tmux-navigator'

Plug 'scrooloose/syntastic' "{{{
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_ruby_checkers = ['rubocop', 'mri']
"}}}

Plug 'tpope/vim-fugitive' "{{{
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
"}}}

Plug 'mhinz/vim-signify' "{{{
  let g:signify_vcs_list = [ 'git', 'svn' ]
"}}}

Plug 'bling/vim-airline' "{{{
  let g:airline#extensions#tabline#enabled         = 1
  let g:airline#extensions#tabline#left_sep        = ' '
  let g:airline#extensions#tabline#left_alt_sep    = ' '
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  let g:airline#extensions#tabline#formatter       = 'unique_tail'
  " let g:airline#extensions#tabline#fnamemod        = ':p:.'
  " let g:airline#extensions#tabline#fnamecollapse   = 0
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
  let g:airline#extensions#virtualenv#enabled = 0
  let g:airline#extensions#eclim#enabled      = 0
  let g:airline#extensions#nrrwrgn#enabled    = 0
  let g:airline#extensions#capslock#enabled   = 0
  let g:airline#extensions#windowswap#enabled = 0

  let g:airline_theme             = 'hybrid'

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_left_sep = '›'
  let g:airline_right_sep = '‹'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.whitespace = 'Ξ'
  let g:airline_symbols.branch = 'B'
"}}}

Plug 'Valloric/YouCompleteMe', { 'do': 'bash ~/.nvim/plugged/YouCompleteMe/install.sh' } "{{{
  let g:acp_enableAtStartup = 0
  let g:ycm_autoclose_preview_window_after_completion = 1
  let g:ycm_filetype_blacklist={'unite': 1}
  let g:ycm_min_num_of_chars_for_completion = 3
  let g:ycm_collect_identifiers_from_tags_files = 1

  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"}}}

Plug 'sirver/ultisnips' "{{{
  let g:UltiSnipsExpandTrigger='<c-k>'
  let g:UltiSnipsJumpForwardTrigger='<c-k>'
  let g:UltiSnipsJumpBackwardTrigger='<c-s-k>'
  let g:UltiSnipsSnippetsDir='~/.nvim/plugged/vim-snippets/UltiSnips'
"}}}

Plug 'honza/vim-snippets'

Plug 'kien/ctrlp.vim', { 'depends': 'tacahiroy/ctrlp-funky' } "{{{
  if exists("g:ctrl_user_command")
    unlet g:ctrlp_user_command
  endif
  if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  else
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co', 'find %s -type f']
    let g:ctrlp_prompt_mappings = {
      \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
  endif
  let g:ctrlp_cmd                    = 'CtrlPCurWD'
  let g:ctrlp_use_caching = 0
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
  \ 'dir':  '\.git\|\.hg\|\.svn\|node_modules\|bower_components\|target\|DS_Store\|tmp\|plugged\',
  \ 'file': '\.jpg$\|\.exe$\|\.so$\|tags$\|\.dll$'
  \ }
  nnoremap <Leader>o :CtrlPCurWD<CR>
  nnoremap <Leader>b :CtrlPBuffer<Cr>
"}}}

Plug 'EasyGrep' "{{{
  let g:EasyGrepRecursive              = 1
  let g:EasyGrepAllOptionsInExplorer   = 1
  let g:EasyGrepCommand                = 1
  nnoremap <leader>vo :GrepOptions<cr>
"}}}

Plug 'junegunn/vim-easy-align' "{{{
  vmap <Enter> <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)
"}}}

Plug 'mbbill/undotree' "{{{
  nnoremap <leader>u :UndotreeToggle<cr>
"}}}

Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar' "{{{
  nmap <C-t> :TagbarToggle<CR>
"}}}

Plug 'Chiel92/vim-autoformat' "{{{
  noremap <leader>f :Autoformat<CR><CR>
"}}}

Plug 'Keithbsmiley/investigate.vim' "{{{
  nnoremap <leader>K :call investigate#Investigate()<CR>
"}}}

Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'elzr/vim-json'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim' "{{{
  let g:used_javascript_libs = 'jquery,underscore,requirejs,handlebars'
"}}}
Plug 'wellle/targets.vim'
Plug 'tmhedberg/matchit'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'rhysd/vim-textobj-ruby'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'sunaku/vim-ruby-minitest'
Plug 'jtratner/vim-flavored-markdown'
Plug 'dsawardekar/ember.vim'
Plug 'mustache/vim-mustache-handlebars' "{{{
  let g:mustache_abbreviations = 1
"}}}
Plug 'chrisbra/csv.vim'
Plug 'ekalinin/Dockerfile.vim'

Plug 'terryma/vim-expand-region' "{{{
  let g:expand_region_text_objects_ruby = {
      \ 'im' :0,
      \ 'am' :0,
      \ 'ir' :0,
      \ 'ar' :0,
      \ }

  map K <Plug>(expand_region_expand)
  map J <Plug>(expand_region_shrink)
"}}}
