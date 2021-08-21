"YouCompleteMe
"转到声明处
nnoremap <leader>dec  :YcmCompleter GoToDeclaration<CR>
"转到定义处
nnoremap <leader>def  :YcmCompleter GoToDefinition<CR>
"设置颜色
highlight Pmenu ctermfg=15  ctermbg=0   guifg=#005f87 guibg=#EEE8D5
highlight PmenuSel ctermfg=15 ctermbg=8 guifg=#AFD700 guibg=#106900
"设置属性
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_min_num_of_chars_for_completion=3
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_max_num_candidates = 20
let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_semantic_triggers = {}
let g:ycm_semantic_triggers.c = ['->', '.', '(', '[', '&']
let g:ycm_global_ycm_extra_conf=g:vim_home.'/conf/pluginconf/.ycm_extra_conf.py'
