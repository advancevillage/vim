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
"Plug 'terryma/vim-multiple-cursors'
"syntastic
"Plug 'scrooloose/syntastic'
"auto-pairs
Plug 'jiangmiao/auto-pairs'
"indentLine
Plug 'Yggdroot/indentLine'
"YouCompleteMe
Plug 'Valloric/YouCompleteMe'
"vim-gutentags
Plug 'ludovicchabant/vim-gutentags'
"vim-json-format
Plug 'forevernull/vim-json-format'
"fatih/vim-go
Plug 'fatih/vim-go'
"Blackrush/vim-gocode
Plug 'Blackrush/vim-gocode'
call plug#end()

let g:plugins = [
    \'molokai',
    \'nerdtree',
    \'vim-airline',
    \'indentLine',
    \'vim-gutentags',
    \'YouCompleteMe',
    \'vim-gocode',
    \]

for value in g:plugins 
    let plugin_path = g:vim_home."/conf/pluginconf/".value.".vim"
    if filereadable(plugin_path)
        execute ':so' plugin_path
    endif
endfor

