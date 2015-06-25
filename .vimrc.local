colorscheme molokai

ab pst :r !pbpaste

:set virtualedit=all

let g:ctrlp_cmd = 'CtrlPMRU'

" Highlight the cursor column, but only for the active window
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
" autocmd VimEnter,Colorscheme * :hi cursorcolumn guibg=#1c1c1c ctermbg=236

" Similar to multiple cursors in Sublime Text
" Bundle 'terryma/vim-multiple-cursors'
" vim-multiple-cursors key bindings
let g:multi_cursor_use_default_mapping=0
" Default mapping
" let g:multi_cursor_next_key='<C-n>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'
" Customize here
let g:multi_cursor_next_key='<C-N>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
inoremap jk <esc>
" Default highlighting (see help :highlight and help :highlight-link)
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

" Indent-Guides
Bundle 'Indent-Guides'
" let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#d75f00 ctermbg=166
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  guibg=#005fd7 ctermbg=026
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#1c1c1c ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#303030 ctermbg=234

highlight Comment ctermfg=LightBlue guifg=LightBlue

set guifont=Source\ Code\ Pro\ Light\ 10
set colorcolumn=80

Bundle 'AndrewRadev/splitjoin.vim'

Bundle 'vim-scripts/Align'
:unmap ,tt

Bundle 'Shougo/context_filetype.vim'
Bundle 'joker1007/vim-markdown-quote-syntax'

Bundle 'jplaut/vim-arduino-ino'
