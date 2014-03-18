colorscheme desert
filetype plugin on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

set laststatus=2
set wildmenu
"highlight search
set hlsearch
"move cursor to search as you type
set incsearch

"No backups, no swap files. It's 2014, Vim!
set nobackup
set noswapfile

set wrap
"Line numbers
set number
"Autoindent автоотступ
set autoindent
"Tab size
set ts=4
"Ignore case when searching
set ignorecase
"Filename in title
set title
"Lines before scroll goes down
set scrolloff=5
"Syntax highlight
syntax on

"Fix backspace
set backspace=2

"highlight current line
set cursorline
"allow mouse to move around
set mouse=a
"проверка ксобок
set showmatch


"No toolbar
if has('gui')
set guioptions-=m
set guioptions-=T
" set guioptions-=1
" set guioptions-=L
" set guioptions-=r
set guioptions-=R
end
"Start maximized
:set columns=250
:set lines=100

"Autocomplete
set omnifunc=syntaxcomplete#Complete
"Folding
"autocmd BufNewFile,BufRead * set foldmethod=syntax
set foldmethod=syntax

"Open new split panel to right and botton
set splitright
set splitbelow


autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

map <F2> :tabnew<CR>
map <silent> <F8>	:Explore<CR>
map <silent> <S-F8> :sp +Explore<CR>
"move to right tab
map <C-right> gt
"move to left tab
map <C-left> gT

command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>

"Ctrl-space autocomplete
inoremap <C-space> <C-x><C-o>
map <F12> :NERDTree<CR>
map <C-q> :q<CR>

"Autocomplete {}
inoremap {<CR> {<CR>}<Esc>ko
"Autocomplete ()
inoremap ( ()<Esc>i

"PLUGINS
"Nerdtree
"snipMate
