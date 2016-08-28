"=======================================================================
"--->高级设置: 插件管理
"插件管理器: vim-plug  vim plugin manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"URL: https://github.com/junegunn/vim-plug
call plug#begin(g:vim_home.'/plugged')
"vim-airline
Plug 'vim-airline/vim-airline'
"scrooloose/nerdtree
Plug 'scrooloose/nerdtree'
"tomasr/molokai
Plug 'tomasr/molokai'
"vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'
"syntastic
Plug 'scrooloose/syntastic'
call plug#end()

let g:plugins = [
    \ 'vim-airline',
    \ 'nerdtree',
    \ 'molokai',
    \ 'vim-multiple-cursors',
    \ 'syntastic',
    \]

for value in g:plugins
    let plugin_path = g:vim_home."/conf/plugin/".value.".vim"
    if filereadable(plugin_path)
        execute ':so' plugin_path
    endif
endfor
