"NeoBundle 'Shougo/neocomplcache.vim'
"NeoBundle 'honza/vim-snippets'
"NeoBundle 'garbas/vim-snipmate'

NeoBundleLazy 'hail2u/vim-css3-syntax', {'autoload':{'filetypes':['css','scss','sass','less']}}
NeoBundleLazy 'ap/vim-css-color', {'autoload':{'filetypes':['css','scss','sass','less']}}
NeoBundleLazy 'othree/html5.vim', {'autoload':{'filetypes':['html']}}
NeoBundleLazy 'pangloss/vim-javascript', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'kchmck/vim-coffee-script', {'autoload':{'filetypes':['coffee']}}
NeoBundleLazy 'maksimr/vim-jsbeautify', {'autoload':{'filetypes':['javascript']}} "{{{
  nnoremap <leader>bjs :call JsBeautify()<cr>
"}}}
NeoBundleLazy 'leshill/vim-json', {'autoload':{'filetypes':['javascript','json']}}
NeoBundleLazy 'othree/javascript-libraries-syntax.vim', {'autoload':{'filetypes':['javascript','coffee','typescript']}}
NeoBundleLazy 'dsawardekar/ember.vim', {'autoload':{'filetypes':['javascript','coffee','typescript']}}
NeoBundleLazy 'mustache/vim-mustache-handlebars', {'autoload':{'filetypes':['javascript','coffee','typescript']}} "{{{
  let g:mustache_abbreviations = 1
"}}}

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

"NeoBundle 'davejlong/cf-utils.vim'
