filetype plugin indent on

syntax on
set smartindent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=-1
set viminfo='100,f1
set shell=/bin/bash
set lbr
set mouse=a
set clipboard^=autoselect
set number

set directory=~/tmp,/var/tmp,/tmp

nnoremap <Esc>{ :tabnext<CR>
nnoremap <Esc>} :tabprevious<CR>
nnoremap <C-t>  :tabnew<CR>
nnoremap <C-w>  :tabclose<CR>
inoremap <Esc>{ <Esc>:tabnext<CR>
inoremap <Esc>} <Esc>:tabprevious<CR>
inoremap <C-t>  <Esc>:tabnew<CR>

vmap <silent> <Tab> >gvllllollllo
vmap <silent> <S-Tab> <gvhhhhohhhho

au FileType gitcommit set formatoptions+=aw
au FileType gitcommit set tw=72

au FileType ruby set ts=2 sw=2

au FileType html set ts=2 sw=2

au FileType json set ts=2 sw=2

au FileType javascript set ts=2 sw=2

au FileType markdown set ts=2 sw=2
