nnoremap <silent> <Leader>b :TagbarToggle<CR>

set tags+=~/.gem.tags

autocmd BufWritePost *
      \ if filereadable('tags') |
      \   call system('ctags -a '.expand('%')) |
      \ endif

