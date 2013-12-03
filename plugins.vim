NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-dispatch'

"{{{ Themes
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'zeis/vim-kolor'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'sjl/badwolf'
"}}}

NeoBundle 'mhinz/vim-startify' "{{{
  let g:startify_session_dir = '~/.vim/.cache/sessions'
  let g:startify_change_to_vcs_root = 1
  let g:startify_show_sessions = 1
  nnoremap <F1> :Startify<cr>
"}}}

NeoBundle 'bling/vim-airline' "{{{
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep=' '
  let g:airline#extensions#tabline#left_alt_sep='¦'
  let g:airline_theme='base16'
  let g:airline_left_sep = '»'
  let g:airline_right_sep = '«'
  let g:airline_linecolumn_prefix = '¶ '
  let g:airline_branch_prefix = 'ʙ '
  let g:airline_paste_symbol = 'ρ'
  let g:airline_whitespace_symbol = 'Ξ'
"}}}

NeoBundleLazy 'scrooloose/nerdtree', {'autoload':{'commands':['NERDTreeToggle','NERDTreeFind']}} "{{{
  let g:NERDTreeWinPos = 'right'
  let g:NERDTreeWinSize = 50
  let g:NERDTreeIgnore=['\.git','\.hg']
  nnoremap <Leader>t :NERDTreeToggle<CR>
  nnoremap <Leader>f :NERDTreeFocus<CR>
"}}}

NeoBundle 'kien/ctrlp.vim', { 'depends': 'tacahiroy/ctrlp-funky' } "{{{
  let g:ctrlp_cmd = 'CtrlPCurWD'
  let g:ctrlp_clear_cache_on_exit=1
  let g:ctrlp_max_height=40
  let g:ctrlp_show_hidden=0
  let g:ctrlp_follow_symlinks=1
  let g:ctrlp_working_path_mode=0
  let g:ctrlp_max_files=20000
  let g:ctrlp_cache_dir='~/.vim/.cache/ctrlp'
  let g:ctrlp_reuse_window='startify'
  let g:ctrlp_extensions=['funky']
  if executable('ag')
    let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
  endif
  nmap \ [ctrlp]
  nnoremap [ctrlp] <nop>
  nnoremap [ctrlp]t :CtrlPBufTag<cr>
  nnoremap [ctrlp]T :CtrlPTag<cr>
  nnoremap [ctrlp]l :CtrlPLine<cr>
  nnoremap [ctrlp]o :CtrlPFunky<cr>
  nnoremap [ctrlp]b :CtrlPBuffer<cr>
"}}}

NeoBundleLazy 'majutsushi/tagbar', {'autoload':{'commands':'TagbarToggle'}} "{{{
  nnoremap <silent> <F9> :TagbarToggle<CR>
"}}}

NeoBundle 'tpope/vim-fugitive' "{{{
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
NeoBundleLazy 'gregsexton/gitv', {'depends':['tpope/vim-fugitive'], 'autoload':{'commands':'Gitv'}} "{{{
  nnoremap <silent> <leader>gv :Gitv<CR>
  nnoremap <silent> <leader>gV :Gitv!<CR>
"}}}

"NeoBundle 'mhinz/vim-signify' "{{{
  "let g:signify_update_on_bufenter=0
"}}}

NeoBundle 'honza/vim-snippets'
NeoBundle 'Shougo/neosnippet.vim' "{{{
  let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets,~/.vim/snippets'
  let g:neosnippet#enable_snipmate_compatibility=1

  imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : (pumvisible() ? "\<C-n>" : "\<TAB>")
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
  imap <expr><S-TAB> pumvisible() ? "\<C-p>" : ""
  smap <expr><S-TAB> pumvisible() ? "\<C-p>" : ""
"}}}

NeoBundleLazy 'Shougo/neocomplcache.vim', {'autoload':{'insert':1}} "{{{
  let g:neocomplcache_enable_at_startup=1
  let g:neocomplcache_temporary_dir='~/.vim/.cache/neocomplcache'
  let g:neocomplcache_enable_fuzzy_completion=1
  let g:neocomplcache_snippets_dir='~/.vim/bundle/vim-snippets/snippets,~/.vim/snippets'
"}}}

NeoBundle 'EasyGrep' "{{{
  let g:EasyGrepRecursive=1
  let g:EasyGrepAllOptionsInExplorer=1
  let g:EasyGrepCommand=1
  nnoremap <leader>vo :GrepOptions<cr>
"}}}


NeoBundleLazy 'cakebaker/scss-syntax.vim', {'autoload':{'filetypes':['scss','sass']}}
NeoBundleLazy 'hail2u/vim-css3-syntax', {'autoload':{'filetypes':['css','scss','sass']}}
NeoBundleLazy 'ap/vim-css-color', {'autoload':{'filetypes':['css','scss','sass','less','styl']}}
NeoBundleLazy 'othree/html5.vim', {'autoload':{'filetypes':['html']}}
NeoBundleLazy 'pangloss/vim-javascript', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'kchmck/vim-coffee-script', {'autoload':{'filetypes':['coffee']}}
NeoBundleLazy 'maksimr/vim-jsbeautify', {'autoload':{'filetypes':['javascript']}} "{{{
  nnoremap <leader>bjs :call JsBeautify()<cr>
"}}}
NeoBundleLazy 'leshill/vim-json', {'autoload':{'filetypes':['javascript','json']}}
NeoBundleLazy 'othree/javascript-libraries-syntax.vim', {'autoload':{'filetypes':['javascript','coffee','ls','typescript']}}

NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-rake'

NeoBundleLazy 'godlygeek/tabular', {'autoload':{'commands':'Tabularize'}} "{{{
  nmap <Leader>a& :Tabularize /&<CR>
  vmap <Leader>a& :Tabularize /&<CR>
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:<CR>
  vmap <Leader>a: :Tabularize /:<CR>
  nmap <Leader>a:: :Tabularize /:\zs<CR>
  vmap <Leader>a:: :Tabularize /:\zs<CR>
  nmap <Leader>a, :Tabularize /,<CR>
  vmap <Leader>a, :Tabularize /,<CR>
  nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
  vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
"}}}

NeoBundle 'terryma/vim-expand-region'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundleDepends 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-entire'
NeoBundle 'lucapette/vim-textobj-underscore'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tyru/open-browser.vim' "{{{
  let g:netrw_nogx = 1 " disable netrw's gx mapping.
  nmap gx <Plug>(openbrowser-smart-search)
  vmap gx <Plug>(openbrowser-smart-search)
"}}}

NeoBundleLazy 'mbbill/undotree', {'autoload':{'commands':'UndotreeToggle'}} "{{{
  let g:undotree_SplitLocation='botright'
  let g:undotree_SetFocusWhenToggle=1
  nnoremap <silent> <F5> :UndotreeToggle<CR>
"}}}

NeoBundle 'nathanaelkane/vim-indent-guides' "{{{
  let g:indent_guides_start_level=1
  let g:indent_guides_guide_size=1
  let g:indent_guides_enable_on_vim_startup=0
  let g:indent_guides_color_change_percent=3
  if !has('gui_running')
    let g:indent_guides_auto_colors=0
    function! s:indent_set_console_colors()
      hi IndentGuidesOdd ctermbg=235
      hi IndentGuidesEven ctermbg=236
    endfunction
    autocmd VimEnter,Colorscheme * call s:indent_set_console_colors()
  endif
"}}}

NeoBundle 'scrooloose/syntastic' "{{{
  let g:syntastic_error_symbol = '✗'
  let g:syntastic_style_error_symbol = '✠'
  let g:syntastic_warning_symbol = '∆'
  let g:syntastic_style_warning_symbol = '≈'
"}}}

"NeoBundle 'bling/vim-bufferline'
"NeoBundle 'sickill/vim-pasta'
"NeoBundle 'matchit.zip'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'tpope/vim-speeddating'
"NeoBundle 'osyo-manga/vim-over'
"NeoBundle 'justinmk/vim-sneak'
"NeoBundle 'monokrome/buffersweeper.vim'
"NeoBundle 'paradigm/TextObjectify'
"NeoBundle 'godlygeek/tabular'
"NeoBundle 'tpope/vim-commentary'
"NeoBundle 'vim-scripts/greplace.vim'
"NeoBundle 'nathanaelkane/vim-indent-guides'
"NeoBundle 'mileszs/ack.vim'
"NeoBundle 'myusuf3/numbers.vim'
"NeoBundle 'mattboehm/vim-unstack'
"NeoBundle 'tpope/vim-repeat'
"NeoBundle 'tpope/vim-markdown'
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'othree/html5.vim'
"NeoBundle 'editorconfig/editorconfig-vim'

