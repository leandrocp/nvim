let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
nnoremap <leader>p :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>/ :Unite grep:.<cr>
nnoremap <leader>y :Unite history/yank<cr>
nnoremap <leader>s :Unite -quick-match buffer<cr>
