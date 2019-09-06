" Custom VimRC by JanMrlth

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'vim-ruby/vim-ruby'
call plug#end()

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Colors and Style
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
colorscheme badwolf

" UI
filetype plugin indent on " load filetype-specific indent files
set number relativenumber        " show line numbers
set showcmd        " show command in bottom bar
set cursorline     " highlight current line
set wildmenu       " visual autocomplete for command menu
set showmatch      " highlight matching {()}
set laststatus=2

syntax enable      " enable syntax processing
set tabstop=4      " number of visual spaces per TAB
set softtabstop=4  " number of spaces in tab when editing
set shiftwidth=4   " On pressing tab, insert 4 spaces
set expandtab      " turns tabs into spaces


" Search
set incsearch      " search as characters are entered
set hlsearch       " highlight search
set path+=**

"Bindings
no <up> ddkP 
no <left>  :tabprevious<CR>
no <right> :tabnext<CR>
no <down> ddp 


ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>

map <C-n> :NERDTreeToggle<CR>

"Navigate between Split Windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


nmap ff :tabfind
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"Leaders for fast pairs
:let mapleader = ","
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {<CR><CR>}<ESC>ki<TAB>

imap jj <ESC>

"vim easy align 
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

