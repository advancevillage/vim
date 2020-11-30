" ack.vim
" leader + a search
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

if executable('ag')
   let g:ackprg = 'ag --vimgrep --nogroup --column'
endif

" 高亮搜索关键词
let g:ackhighlight = 1
