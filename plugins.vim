NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'marcweber/vim-addon-mw-utils'
NeoBundle 'sheerun/vim-polyglot'

"{{{ Themes
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'altercation/vim-colors-solarized'
"}}}

NeoBundle 'Shougo/unite.vim'

NeoBundle 'bling/vim-airline' "{{{
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
  let g:airline#extensions#tagbar#enabled     = 0
  let g:airline#extensions#csv#enabled        = 0
  let g:airline#extensions#virtualenv#enabled = 0
  let g:airline#extensions#eclim#enabled      = 0
  let g:airline#extensions#nrrwrgn#enabled    = 0
  let g:airline#extensions#capslock#enabled   = 0
  let g:airline#extensions#windowswap#enabled = 0

  let g:airline_theme             = 'base16'
  let g:airline_left_sep          = '»'
  let g:airline_right_sep         = '«'
  let g:airline_linecolumn_prefix = '¶'
  let g:airline_branch_prefix     = 'B'
  let g:airline_paste_symbol      = 'ρ'
  let g:airline_whitespace_symbol = 'Ξ'
"}}}

NeoBundle 'mhinz/vim-signify' "{{{
  let g:signify_vcs_list = [ 'git', 'svn' ]
"}}}

"NeoBundleLazy 'scrooloose/nerdtree', {'autoload':{'commands':['NERDTreeToggle','NERDTreeFind']}} "{{{
  "let g:NERDTreeWinPos  = 'right'
  "let g:NERDTreeWinSize = 50
  "let g:NERDTreeIgnore  = ['\.git','\.hg']
  "nnoremap <Leader>t :NERDTreeToggle<CR>
  "nnoremap <Leader>f :NERDTreeFocus<CR>
"}}}

NeoBundle 'Shougo/vimfiler.vim' "{{{
  let g:vimfiler_as_default_explorer = 1
  let g:vimfiler_tree_leaf_icon = ' '
  let g:vimfiler_tree_opened_icon = '▾'
  let g:vimfiler_tree_closed_icon = '▸'
  let g:vimfiler_file_icon = ' '
  let g:vimfiler_marked_file_icon = '*'
  call vimfiler#custom#profile('default', 'context', {
    \ 'safe' : 0,
  \ })
  nnoremap <Leader>t :VimFilerExplorer<CR>
"}}}

NeoBundle 'Shougo/neocomplete.vim' "{{{
  " enable
  let g:acp_enableAtStartup = 0
  let g:neocomplete#enable_at_startup = 1

  " smart case
  let g:neocomplete#enable_smart_case = 1
  let g:neocomplete#enable_camel_case = 1

  " minimum syntax keyword length
  let g:neocomplete#sources#syntax#min_keyword_length = 3
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

  " use fuzzy completion
  let g:neocomplete#enable_fuzzy_completion = 1

  " dicts
  let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'java' : '~/.vim/dict/java.dict',
      \ 'ruby' : '~/.vim/dict/ruby.dict',
      \ }

  " for auto select
  let g:neocomplete#enable_complete_select = 1
  try
    let completeopt_save = &completeopt
    set completeopt+=noinsert,noselect
  catch
    let g:neocomplete#enable_complete_select = 0
  finally
    let &completeopt = completeopt_save
  endtry
  let g:neocomplete#enable_auto_select = 0
  let g:neocomplete#enable_refresh_always = 0
  let g:neocomplete#enable_cursor_hold_i = 0

  " <TAB>: completion.
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ neocomplete#start_manual_complete()
  function! s:check_back_space() "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction"}}}
  " <S-TAB>: completion back.
  inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"

  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
  endif
"}}}

NeoBundle 'kien/ctrlp.vim', { 'depends': 'tacahiroy/ctrlp-funky' } "{{{
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

NeoBundle 'EasyGrep' "{{{
  let g:EasyGrepRecursive              = 1
  let g:EasyGrepAllOptionsInExplorer   = 1
  let g:EasyGrepCommand                = 1
  nnoremap <leader>vo :GrepOptions<cr>
"}}}

NeoBundleLazy 'godlygeek/tabular', {'autoload':{'commands':'Tabularize'}} "{{{
  nnoremap <leader>a <ESC>:Tabularize /
  vmap <leader>a :Tabularize /
"}}}

NeoBundleLazy 'mbbill/undotree', {'autoload':{'commands':'UndotreeToggle'}} "{{{
  let g:undotree_SplitLocation      = 'botright'
  let g:undotree_SetFocusWhenToggle = 1
  nnoremap <silent> <F5> :UndotreeToggle<CR>
"}}}

NeoBundle 'nathanaelkane/vim-indent-guides' "{{{
  let g:indent_guides_start_level           = 1
  let g:indent_guides_guide_size            = 1
  let g:indent_guides_enable_on_vim_startup = 0
  let g:indent_guides_color_change_percent  = 3
  if !has('gui_running')
    let g:indent_guides_auto_colors = 0
    function! s:indent_set_console_colors()
      hi IndentGuidesOdd ctermbg=235
      hi IndentGuidesEven ctermbg=236
    endfunction
    autocmd VimEnter,Colorscheme * call s:indent_set_console_colors()
  endif
"}}}
