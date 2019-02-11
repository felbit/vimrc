set mouse=""

" eight spaces hard tabs will drive me to drinking
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

let g:mapleader="\<space>"

set number
set relativenumber

set encoding=utf-8
set hlsearch
set incsearch
set ignorecase
set smartcase

map <CR> :nohl<cr>

" Show us, what we are working on
set title

call plug#begin('~/.config/nvim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'sheerun/vim-polyglot'
Plug 'neomake/neomake'

Plug 'c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist'
Plug 'slashmili/alchemist.vim'

Plug 'vim-erlang/vim-erlang-runtime'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'vimwiki/vimwiki'

" Colors!
Plug 'tomasr/molokai'
Plug 'schickele/vim-nachtleben'
Plug 'semibran/vim-colors-synthetic'
Plug 'morhetz/gruvbox'

Plug 'SirVer/ultisnips' | Plug 'phux/vim-snippets'

" Clojure
" ... wait? Clojure?! What about Emacs?
" It's just a test, Joe.
Plug 'tpope/vim-salve'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'
Plug 'eraserhd/parinfer-rust'

" PHP
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'c9s/phpunit.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'phpactor/phpactor', { 'do': ':call phpactor#Update()', 'for': 'php'}
Plug 'phpactor/ncm2-phpactor', {'for': 'php'}
Plug 'ncm2/ncm2-ultisnips'

" NEOS/Fusion (WIP!)
"Plug 'felbit/neos-fusion.vim'

call plug#end()

syntax enable
set termguicolors
set background=dark
colorscheme gruvbox

" FZF Setup
" Toggle fzf Files
nmap <leader>ff :Files<cr>
" Toggle fzf Buffers
nmap <leader>fb :Buffers<cr>
" Toggle fzf Ag
nmap <leader>fa :Ag<cr>

" Deoplete Setup
let g:deoplete#enable_at_startup = 1
" use tab for completion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Neomake Setup
augroup localneomake
  autocmd! BufWritePost * Neomake
augroup END
let g:neomake_markdown_enabled_makers = []

source $HOME/.config/nvim/config/elixir.vimrc
source $HOME/.config/nvim/config/php.vimrc
