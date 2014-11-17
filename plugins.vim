NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'marcweber/vim-addon-mw-utils'
NeoBundle 'sheerun/vim-polyglot'

"{{{ Themes
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'altercation/vim-colors-solarized'
"}}}

"NeoBundle 'bling/vim-airline' "{{{
  "let g:airline#extensions#tabline#enabled      = 1
  "let g:airline#extensions#tabline#left_sep     = ' '
  "let g:airline#extensions#tabline#left_alt_sep = '¦'
  "let g:airline_theme                           = 'base16'
  "let g:airline_left_sep                        = '»'
  "let g:airline_right_sep                       = '«'
  "let g:airline_linecolumn_prefix               = '¶ '
  "let g:airline_branch_prefix                   = 'ʙ '
  "let g:airline_paste_symbol                    = 'ρ'
  "let g:airline_whitespace_symbol               = 'Ξ'
"}}}

NeoBundle 'itchyny/lightline.vim' "{{{
  source ~/.vim/lightline.vim
"}}}

NeoBundle 'ap/vim-buftabline' "{{{
  let g:buftabline_indicators = 1
"}}}

NeoBundle 'mhinz/vim-signify' "{{{
  let g:signify_vcs_list = [ 'git', 'svn' ]
"}}}

NeoBundleLazy 'scrooloose/nerdtree', {'autoload':{'commands':['NERDTreeToggle','NERDTreeFind']}} "{{{
  let g:NERDTreeWinPos  = 'right'
  let g:NERDTreeWinSize = 50
  let g:NERDTreeIgnore  = ['\.git','\.hg']
  nnoremap <Leader>t :NERDTreeToggle<CR>
  nnoremap <Leader>f :NERDTreeFocus<CR>
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
