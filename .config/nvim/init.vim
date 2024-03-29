" PLUGINS
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'github/copilot.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'kana/vim-textobj-user'
Plug 'jasonlong/vim-textobj-css'
" Plug 'ThePrimeagen/vim-be-good'
Plug 'preservim/nerdtree'
call plug#end()
autocmd vimenter * ++nested colorscheme gruvbox
