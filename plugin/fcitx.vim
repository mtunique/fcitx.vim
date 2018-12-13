scriptencoding utf-8
" fcitx.vim	remember fcitx's input state for each buffer
" Author:       lilydjwg
" Version:	1.2.5
" URL:		http://www.vim.org/scripts/script.php?script_id=3764
" ---------------------------------------------------------------------
" Load Once:
if &cp  || exists("g:loaded_fcitx") 
  finish
endif
if executable('fcitx5-remote')
  " currently python version does not support fcitx5
  let g:fcitx_remote = 'fcitx5-remote'
  runtime so/fcitx.vim
  finish
else
  let g:fcitx_remote = 'fcitx-remote'
endif
runtime so/fcitx.vim
set ttimeoutlen=0
finish

