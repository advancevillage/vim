""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"--->键映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=";"
"重映射<ESC>
inoremap  <leader>; <Esc>

nmap <leader>q   :q<CR>
nmap <leader>w   :w!<CR>
nmap <leader>Q   :qa<CR>
nmap <leader>W   :wq<CR>
nmap <leader>d   :cq<CR>
" 十六进制转换
nmap <leader>x   :%!xxd<CR>
nmap <leader>xx  :%!xxd -r<CR>
" 文件行倒序
nmap <leader>r   :g/^/m0<CR>

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

" 正则匹配复制
function! RegexCopy (m) 
    let @+ .= a:m . "\n"
    return a:m
endfunction

map <leader>r :let @+ = ''<CR>:%s/regex/\=RegexCopy(submatch(0))/g
