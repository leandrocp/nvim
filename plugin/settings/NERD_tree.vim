" Open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFocus<CR>

let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 50

