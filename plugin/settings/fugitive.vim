" https://github.com/skwp/dotfiles/blob/master/vim/plugin/settings/vim-fugitive.vim#L10
" Every time you open a git object using fugitive it creates a new buffer. 
" This means that your buffer listing can quickly become swamped with 
" fugitive buffers. This prevents this from becomming an issue:
autocmd BufReadPost fugitive://* set bufhidden=delete

