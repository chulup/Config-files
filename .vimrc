execute pathogen#infect()

set number hlsearch
set tabstop=4 softtabstop=0 shiftwidth=4 expandtab
set smartindent

set scrolljump=1
set scrolloff=5
" add byte offset to the statusline
set rulerformat=%-14.(%o,%l,%c%V%)\ %P

inoremap kjh <ESC>:tabprev<CR>
inoremap kjl <ESC>:tabnext<CR>
nnoremap kjh :tabprev<CR>
nnoremap kjl :tabnext<CR>
" kj to Normal mode 
inoremap kj <ESC>

autocmd syntax * SpaceHi
