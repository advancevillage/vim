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
"Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim', { 'as': 'onedark' }
"fatih/vim-go
Plug 'fatih/vim-go',{'do':':GoUpdateBinaries', 'tag': 'v1.28'}
"tpope/vim-fugitive
Plug 'tpope/vim-fugitive'
"YCM upgrade to lsp mode
"YCM 太慢
"Plug 'ycm-core/YouCompleteMe'
"vim-delve
Plug 'sebdah/vim-delve'
"mileszs/ack.vim 搜索
Plug 'mileszs/ack.vim'
"git blame
Plug 'zivyangll/git-blame.vim'
"copilot
Plug 'github/copilot.vim'
"文件检索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"lsp
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()


let g:plugins = [
    \'fold',
    \'onedark',
    \'nerdtree',
    \'vim-airline',
    \'vim-fugitive',
    \'vim-delve',
    \'vim-go',
    \'ack',
    \'git-blame',
    \'fzf',
    \'lsp',
    \'copilot',
    \]

for value in g:plugins 
    let plugin_path = g:vim_home."/conf/pluginconf/".value.".vim"
    if filereadable(plugin_path)
        execute ':so' plugin_path
    endif
endfor

