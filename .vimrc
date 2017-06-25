" The Bare necessities
" set tabstop=4
" set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set number
set showbreak=........
set display=lastline

" Use color syntax highlighting.
syntax on

" Set color scheme
color delek

" Color specifications. Change them as you would like.

hi Comment	term=none	ctermfg=gray	guifg=Gray
hi Constant	term=underline	ctermfg=cyan	guifg=Cyan
hi Identifier	term=underline	ctermfg=green	guifg=White
hi Statement	term=bold	ctermfg=white	guifg=White
hi PreProc	term=underline	ctermfg=magenta	guifg=Magenta
hi Type		term=underline	ctermfg=white	guifg=White
hi Special	term=bold	ctermfg=blue	guifg=Blue
hi Nontext	term=bold	ctermfg=red	guifg=Red
hi Normal	guifg=Yellow	guibg=#00007F
hi Normal	ctermfg=darkgreen

hi Comment      cterm=none	gui=none
hi Constant     cterm=bold	gui=none
hi Identifier   cterm=none	gui=none
hi Statement    cterm=bold	gui=none
hi PreProc      cterm=bold	gui=none
hi Type         cterm=bold	gui=none
hi Special      cterm=bold	gui=none
hi NonText	cterm=bold	gui=none
