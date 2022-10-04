" Leader & Mappings
let mapleader=" " " leader is comma

" fast save and close
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>x :q!<CR>

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>