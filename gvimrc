set guifont=DejaVu_Sans_Mono:h14
set encoding=utf-8 

set lines=999 columns=999
set linespace=3
set antialias

if has('win32') || has('win64')
  au GUIEnter * simalt ~x
  set guifont=DejaVu_Sans_Mono:h10
endif

set guioptions-=T   " No toolbar
set guioptions-=r   " No scrollbars

