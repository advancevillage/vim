"=======================================================================
"--->高级设置: 插件管理
"插件管理器: vim-plug  vim plugin manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"URL: https://github.com/junegunn/vim-plug
call plug#begin(g:vim_home.'/plugged')
"vim-airline
Plug 'vim-airline/vim-airline'
"preservim/nerdtree
Plug 'preservim/nerdtree'
"tomasr/molokai
Plug 'tomasr/molokai'
"fatih/vim-go
Plug 'fatih/vim-go',{ 'do': ':GoUpdateBinaries' }
"tpope/vim-fugitive
Plug 'tpope/vim-fugitive'
"mdempsky/gocode
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
"YCM
Plug 'ycm-core/YouCompleteMe'
"vim-delve
Plug 'sebdah/vim-delve'
"mileszs/ack.vim 搜索
Plug 'mileszs/ack.vim'
"git blame
Plug 'zivyangll/git-blame.vim'
"LateX
Plug 'gu-fan/mathematic.vim'
"copilot
Plug 'github/copilot.vim'
"文件检索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

let g:plugins = [
    \'molokai',
    \'nerdtree',
    \'vim-airline',
    \'vim-go',
    \'vim-fugitive',
    \'vim-delve',
    \'ack',
    \'YouCompleteMe',
    \'git-blame',
    \'mathematic',
    \'copilot',
    \'fzf',
    \]

for value in g:plugins 
    let plugin_path = g:vim_home."/conf/pluginconf/".value.".vim"
    if filereadable(plugin_path)
        execute ':so' plugin_path
    endif
endfor

