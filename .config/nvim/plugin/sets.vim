" spaces > tabs (and files)
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
augroup yaml_fix
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
    autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END
augroup css_fix
    autocmd!
    autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END

" misc
set nohlsearch
set incsearch
set nowrap
set noswapfile
set scrolloff=8
"set cmdheight=1
set signcolumn=yes

" line numbers
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
