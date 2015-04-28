Plug 'mileszs/ack.vim'

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

Plug 'scrooloose/syntastic'

Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
"Plug 'ap/vim-css-color'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
"Plug 'maksimr/vim-jsbeautify'
Plug 'elzr/vim-json'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim' "{{{
  let g:used_javascript_libs = 'jquery,underscore,requirejs,handlebars'
"}}}

Plug 'austintaylor/vim-open'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'

Plug 'jtratner/vim-flavored-markdown'

Plug 'dsawardekar/ember.vim'
Plug 'mustache/vim-mustache-handlebars' "{{{
  let g:mustache_abbreviations = 1
"}}}

"Plug 'jiangmiao/auto-pairs'
"Plug 'kana/vim-textobj-user'
"Plug 'kana/vim-textobj-indent'
"Plug 'kana/vim-textobj-entire'
"Plug 'paradigm/TextObjectify'
"Plug 'gcmt/wildfire.vim'
"Plug 'lucapette/vim-textobj-underscore'
"Plug 'sickill/vim-pasta'
Plug 'osyo-manga/vim-over'
"Plug 'editorconfig/editorconfig-vim'

Plug 'christoomey/vim-tmux-navigator' "{{{
  let g:tmux_navigator_save_on_switch = 1
"}}}
