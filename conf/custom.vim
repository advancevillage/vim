"python 创建文件自动更新文件说明信息
autocmd BufNewFile *.py exec ":call PythonHeaderInfo()"

" 自动定位到文件尾
autocmd BufNewFile * normal G
" 保存时插入上次修改时间
au BufWrite *.py call PythonHeaderInfoModify(-1)

func PythonHeaderInfo()
    if expand("%:e") == 'py'
        call setline(1, '#!/usr/bin/env python3')
        call setline(2, '# -*- coding: utf-8 -*-')
        call append(line(".")+1, "# Author:        cugriver@163.com")
        call append(line(".")+2, "# Created Time:  ".strftime("%Y-%m-%d  %H:%M"))
        call append(line(".")+3, "# Last Modified: ".strftime("%Y-%m-%d  %H:%M"))
    endif
endfunc

func PythonHeaderInfoModify(lineno)
    if expand("%:e") == 'py'
        let modif_time = strftime("%Y-%m-%d  %H:%M")
        let line = '# Last Modified: '.modif_time
        call setline(5, line)
        call append(a:lineno, line)
    endif
endfunc
