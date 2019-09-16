let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

set mouse=a
set undofile
set undodir="$HOME/.vimundo"
set belloff=all
set relativenumber
set number
set nocompatible              " be iMproved, required
set tabstop=2
set shiftwidth=2

nnoremap ; :
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

syntax on
filetype off                  " required

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'

" git repos on your local machine (i.e. when working on your own plugin)
""Plug 'file:///home/gmarik/path/to/plugin'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'kmewhort/byebug-rails-loader'
Plug 'kmewhort/vim-byebug-breakpoints'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary'
Plug 'roman/golden-ratio'
Plug 'tpope/vim-rails'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline-themes'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-sleuth'
Plug 'vim-vdebug/vdebug'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
" Initialize plugin system
call plug#end()

" ==========
" Linting
" ==========
" " Set specific linters
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}
let g:ale_fixers = {
  \   'ruby': [
  \       'rubocop'
  \   ],
  \}
" " Only run linters named in ale_linters settings. Enable if slow.
let g:ale_linters_explicit = 0
let g:airline#extensions#ale#enabled = 1 
" ===========
" Color schemes
" ===========
"colorscheme termschool
colorscheme oceanicnext

" ===========
" Mappings
" ===========
map <C-P> :Files<CR>

" ===========
" NERDTree
" ===========
let NERDTreeShowHidden=1 " Always show dot files
let NERDTreeQuitOnOpen=1 " Close the NERDTree after opening a file

map <Leader>n :NERDTreeFind<CR> " Leader + n to open the NT”
map - :NERDTreeToggle<CR>

command Vimrc e ~/.vimrc

" Prevent markdown folding
let g:vim_markdown_folding_disabled=1
map <Leader>notes :e ~/Dropbox/dev/notes.md
