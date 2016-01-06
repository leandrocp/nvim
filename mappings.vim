imap jj <Esc>
nnoremap ! :!
nnoremap <leader>w :w<cr>
nnoremap <leader>W :wq<cr>
nnoremap <silent> <leader>q :Sbd<CR>
nnoremap <silent> <leader>qq :Sbdm<CR>
nnoremap <leader><leader> <c-^>
cmap w!! %!sudo tee > /dev/null %
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" nnoremap <silent> <Leader>= :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
" nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" sane regex {{{
  nnoremap / /\v
  vnoremap / /\v
  nnoremap ? ?\v
  vnoremap ? ?\v
  nnoremap :s/ :s/\v
"}}}

" sane nN {{{
  nnoremap <expr> n  'Nn'[v:searchforward]
  nnoremap <expr> N  'nN'[v:searchforward]
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

" move lines {{{
  nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
  nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>
"}}}

vmap <silent> <leader>c "+y
nmap <silent> <leader>p "+p

map <leader>= mzgg=G`z
