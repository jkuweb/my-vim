runtime! debian.vim

if has("syntax")
  syntax on
endif

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent off
endif

set showmatch
set ignorecase
set hlsearch 
set incsearch
set textwidth=80
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set paste
set noerrorbells
set nocompatible
set number
filetype off

" Vundle 
" set up Vundle 
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

" Autocompletado con SuperTab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark
set t_Co=256

"make the 81st column stand out 
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)


" Instrucciones exclusivas para PHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
