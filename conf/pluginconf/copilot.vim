" copilot 设置
inoremap <silent><script><expr> <C-j> copilot#Accept("\<CR>")
let g:copilot_filetypes = {'*': v:false,'go': v:true, 'python': v:true} 
let g:copilot_no_tab_map = v:true

