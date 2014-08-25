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

NeoBundle 'elixir-lang/vim-elixir'

NeoBundle 'terryma/vim-expand-region'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-entire'
NeoBundle 'gcmt/wildfire.vim'
NeoBundle 'lucapette/vim-textobj-underscore'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-surround'
NeoBundle 'papanikge/vim-voogle'

NeoBundle 'Keithbsmiley/investigate.vim' "{{{
  nnoremap K :call investigate#Investigate()<cr>
"}}}

"NeoBundle 'scrooloose/syntastic' "{{{
  "let g:syntastic_error_symbol = '✗'
  "let g:syntastic_style_error_symbol = '✠'
  "let g:syntastic_warning_symbol = '∆'
  "let g:syntastic_style_warning_symbol = '≈'
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

