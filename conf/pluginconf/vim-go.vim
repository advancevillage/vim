"plugin: vim-go
"定义快捷键 <leader>在keymap.vim中定义,为 ";"
nmap <leader>gd  :GoDef<CR>
nmap <leader>gim :GoImport<CR>
nmap <leader>gb  :GoBuild<CR>
nmap <leader>gin :GoInstall<CR>
nmap <leader>gt  :GoTest<CR>
"vim-go 设置
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_fields = 1
let g:rehash256 = 1
let g:go_fmt_fail_silently = 1
let g:go_highlight_types = 1
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'
let g:go_highlight_diagnostic_errors = 0
let g:go_highlight_diagnostic_warnings = 0
