" Custom VimRC by JanMrlth

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'
Plug 'sirver/ultisnips'
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'valloric/youcompleteme'
call plug#end()



"Colors
colorscheme badwolf "colorscheme in ~/.vim/colors/

syntax enable 		"enable syntax processing
set tabstop=4 		"number of visual spaces per TAB
set softtabstop=4 	"number of spaces in tab when editing
set expandtab		"turns tabs into spaces

"UI
set number		"show line numbers
set showcmd		"show command in bottom bar
set cursorline		"highlight current line
filetype indent on	"load filetype-specific indent files
set wildmenu		"visual autocomplete for command menu
set showmatch		" highlight matching {()}
set laststatus=2

"Search
set incsearch		"search as characters are entered
set hlsearch		"highlight search
set path+=**

"Bindings
no <up> ddkP 
no <left> <Nop>
no <right> <Nop>
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

