let g:vim_home = expand('~/.vim')

execute ':so' g:vim_home."/conf/basic.vim"
execute ':so' g:vim_home."/conf/keymap.vim"
execute ':so' g:vim_home."/conf/pluginmanager.vim"
execute ':so' g:vim_home."/conf/custom.vim"
