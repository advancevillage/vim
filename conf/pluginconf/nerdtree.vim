"plugin: NERDTREE
"定义快捷键 <leader>在keymap.vim中定义,为 ";"
nmap <leader>ft :NERDTreeToggle<CR>
"定义目录树的分支图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"设置目录树在界面的位置left OR right
let g:NERDTreeWinPos = "right"  
"设置目录目录树是否显示隐藏文件夹
"let g:NERDTreeShowHidden = 1
"设置自动清除缓存
let g:NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")&& b:NERDTree.isTabTree()) | q | endif


