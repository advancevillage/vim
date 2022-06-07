"开启详细模式便于查错
let g:autoformat_verbosemode=1
"设置发生保存事件时执行格式化
autocmd BufWrite *.sql,*.c :Autoformat

"let g:autoformat_autoindent = 0
"let g:autoformat_retab = 0
"let g:autoformat_remove_trailing_spaces = 0
"autocmd FileType vim,tex let b:autoformat_autoindent=0
"gg=G :retab :RemoveTrailingSpaces
