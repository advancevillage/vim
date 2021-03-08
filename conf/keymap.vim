""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"--->键映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=";"
"重映射<ESC>
inoremap  <leader>; <Esc>

nmap <leader>q  :q<CR>
nmap <leader>w  :w!<CR>
nmap <leader>Q  :qa<CR>
nmap <leader>W  :wq<CR>

nnoremap <leader>lw  <C-W>l
nnoremap <leader>hw  <C-W>h
nnoremap <leader>jw  <C-W>j
nnoremap <leader>kw  <C-W>k
nnoremap <leader><tab> :bn<CR>
nnoremap <leader><tab><tab> :bp<CR>

nnoremap <leader>tn :tabnew<Space><Space><Space>
map <leader>tc :tabclose<CR>
map <leader>tm :tabmove<CR>

map <leader>sp :split<CR>
map <leader>vsp :vsplit<CR>
map <leader>cl  :close<CR>
"翻页
map nn  <C-F>
map uu  <C-B>
"代码折叠
map <leader>z za
