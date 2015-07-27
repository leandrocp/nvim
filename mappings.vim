imap jj <Esc>
nnoremap ! :!
nnoremap <leader>w :w<cr>
nnoremap <leader>W :wq<cr>
nnoremap <silent> <leader>q :Sbd<CR>
nnoremap <silent> <leader>qq :Sbdm<CR>
nnoremap <leader><leader> <c-^>
cmap w!! %!sudo tee > /dev/null %
" map <F2> :set invpaste<CR>:set paste?<CR>
" nnoremap <leader>v <C-w>v<C-w>l
" nnoremap <leader>h <C-w>s<C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" nnoremap <silent> <Leader>= :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
" nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" sane regex {{{
  nnoremap / /\v
  vnoremap / /\v
  nnoremap ? ?\v
  vnoremap ? ?\v
  nnoremap :s/ :s/\v
"}}}

" reselect visual block after indent {{{
  vnoremap < <gv
  vnoremap > >gv
"}}}

" buffers {{{
  map <leader>l :bn<cr>
  map <leader>h :bp<cr>
  map <leader>q :bd<cr>
"}}}

" move lines
" http://reefpoints.dockyard.com/2013/09/26/vim-moving-lines-aint-hard.html
" http://vimcasts.org/episodes/creating-repeatable-mappings-with-repeat-vim/
" {{{
  " inoremap <leader>k <ESC>:m .-2<CR>==gi
  " inoremap <leader>j <ESC>:m .+1<CR>==gi
  " vnoremap <leader>j :m '>+1<CR>gv=gv
  " vnoremap <leader>k :m '<-2<CR>gv=gv"

  " nnoremap <silent> <Plug>NormalLineDown :m .+1<CR>==
  " \:call repeat#set("\<Plug>NormalLineDown")<CR>
  " nmap <leader>j <Plug>NormalLineDown

  " nnoremap <silent> <Plug>NormalLineUp :m .-2<CR>==
  " \:call repeat#set("\<Plug>NormalLineUp")<CR>
  " nmap <leader>k <Plug>NormalLineUp
"}}}

" toogle search highlight {{{
  " map  <F1> :set hls!<CR>
  " imap <F1> <ESC>:set hls!<CR>a
  " vmap <F1> <ESC>:set hls!<CR>gv
"}}}

vmap <silent> <leader>c "+y
nmap <silent> <leader>p "+p
