" map <F2> :NERDTreeTabsToggle<CR>

" Open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

