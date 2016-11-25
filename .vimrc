execute pathogen#infect()

set number hlsearch
set tabstop=4 softtabstop=0 shiftwidth=4 expandtab
set smartindent

set scrolljump=1
set scrolloff=5
" add byte offset to the statusline
set rulerformat=%-14.(%o,%l,%c%V%)\ %P

inoremap fjh <ESC>:tabprev<CR>
inoremap fjl <ESC>:tabnext<CR>
nnoremap fjh :tabprev<CR>
nnoremap fjl :tabnext<CR>
" kj to Normal mode 
inoremap fj <ESC>

autocmd syntax * SpaceHi
