set mouse=""

" eight spaces hard tabs will drive me to drinking
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

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

Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'
Plug 'ludovicchabant/vim-gutentags'

Plug 'vimwiki/vimwiki'
Plug 'wakatime/vim-wakatime'

Plug 'SirVer/ultisnips' | Plug 'phux/vim-snippets'

Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'


" Colors!
Plug 'tomasr/molokai'
Plug 'schickele/vim-nachtleben'
Plug 'semibran/vim-colors-synthetic'
Plug 'morhetz/gruvbox'

" Erlang & Elixir/Phoenix
Plug 'c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist'
Plug 'slashmili/alchemist.vim'
Plug 'vim-erlang/vim-erlang-runtime'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

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
"Plug 'ncm2/ncm2-ultisnips'

" NEOS/Fusion (WIP!)
"Plug 'felbit/neos-fusion.vim'

" HTML
" vim-closetag slows down PHP/Flow because of the weird <f:...> tags.
" Maybe those tags can be added to the known list of tags?
"Plug 'alvan/vim-closetag'

" JS
Plug 'pangloss/vim-javascript'
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

" Normal mode in terminal emulator
:tnoremap <Esc> <C-\><C-n>

" Move between open windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Pomodoro thymer
nnoremap <leader>t :!thyme -d<cr>
source $HOME/.config/nvim/config/elixir.vimrc
source $HOME/.config/nvim/config/html.vimrc
source $HOME/.config/nvim/config/php.vimrc

