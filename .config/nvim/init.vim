" Leader & Mappings
let mapleader="," " leader is comma

" fast save and close
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

" filetype specific behaviour
autocmd Filetype sql setlocal noincsearch
