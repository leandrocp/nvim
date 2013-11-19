imap jj <Esc>
nnoremap <leader>w :w<cr>
nnoremap <leader>W :wq<cr>
nnoremap <leader>q :bp<cr>:bd #<cr>                   "close current buffer
nnoremap <leader><leader> <c-^>                       "switch between the last two files
cmap w!! %!sudo tee > /dev/null %                     "save as sudo
map <F6> :set invpaste<CR>:set paste?<CR>             "paste mode
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

