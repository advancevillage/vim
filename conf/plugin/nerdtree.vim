"plugin: NERDTREE
nmap <leader>ft :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinPos = "right"  
"let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")&& b:NERDTree.isTabTree()) | q | endif


