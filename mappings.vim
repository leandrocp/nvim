imap jj <Esc>
nnoremap ! :!
nnoremap <leader>w :w<cr>
nnoremap <leader>W :wq<cr>
nnoremap <leader>q :bp<cr>:bd #<cr>
nnoremap <leader><leader> <c-^>
cmap w!! %!sudo tee > /dev/null %
map <F2> :set invpaste<CR>:set paste?<CR>
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <silent> <Leader>= :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
" sane regex {{{
  nnoremap / /\v
  vnoremap / /\v
  nnoremap ? ?\v
  vnoremap ? ?\v
  nnoremap :s/ :s/\v
"}}}
" reselect visual block after indent
vnoremap < <gv
vnoremap > >gv
" ctags {{{
  if neobundle#is_sourced('vim-dispatch')
    nnoremap <F12>:Dispatch ctags -R<cr>
  endif
"}}}
" buffers {{{
  map <leader>l :bn<cr>
  map <leader>h :bp<cr>
  map <leader>q :bd<cr>
" }}}
" move lines -
" http://reefpoints.dockyard.com/2013/09/26/vim-moving-lines-aint-hard.html
" {{{
  nnoremap <C-j> :m .+1<CR>==
  nnoremap <C-k> :m .-2<CR>==
  inoremap <C-j> <ESC>:m .+1<CR>==gi
  inoremap <C-k> <ESC>:m .-2<CR>==gi
  vnoremap <C-j> :m '>+1<CR>gv=gv
  vnoremap <C-k> :m '<-2<CR>gv=gv"
" }}}
" toogle search highlight {{{
map  <F1> :set hls!<CR>
imap <F1> <ESC>:set hls!<CR>a
vmap <F1> <ESC>:set hls!<CR>gv
"}}}
