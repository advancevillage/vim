let g:vim_ai_roles_config_file = '~/.vim/roles.ini'
let g:vim_ai_token_file_path = '~/.config/ai.token'

let g:vim_ai_debug = 1
let g:vim_ai_debug_log_file = "/tmp/vim_ai_debug. log"

" trigger chat
xnoremap <leader>cc :AIChat<CR>
nnoremap <leader>cc :AIChat<CR>
