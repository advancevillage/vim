"plugin: vim-go
"定义快捷键 <leader>在keymap.vim中定义,为 ";"
nmap <leader>gd  :GoDef<CR>
nmap <leader>gi  :GoImplements<CR>
nmap <leader>gim :GoImport<CR>
nmap <leader>gf  :GoFmt<CR>
nmap <leader>gb  :GoBuild<CR>
nmap <leader>gin :GoInstall<CR>
nmap <leader>gt  :GoTest<CR>
nmap <leader>gdd <C-t>
"vim-go 设置
let g:go_fmt_experimental = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
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
"校验
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_deadline = "5s"
let g:go_def_mode = 'godef'
let g:go_decls_includes = "func,type"
let g:go_list_type = "quickfix"
" Run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
