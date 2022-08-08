call plug#begin('~/local/share/nvim/plugged')

Plug 'cohama/lexima.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'glepnir/lspsaga.nvim'
Plug 'joshdick/onedark.vim' 
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'


call plug#end()

syntax on
set shiftwidth=4 softtabstop=4 expandtab 
set termguicolors
set autoindent
inoremap <Alt> <Right>

source $HOME/.config/nvim/themes/onedark.vim
