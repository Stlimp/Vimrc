colorscheme desert
filetype plugin on

set laststatus=2
set wildmenu
"highlight search
set hlsearch
"move cursor to search as you type
set incsearch

set wrap
"Line numbers
set number
"Autoindent автоматический отступ
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

"highlight current line
set cursorline
"allow mouse to move around
set mouse=a
"проверка скобок
set showmatch

"No toolbar
if has('gui')
	set guioptions-=m
	set guioptions-=T
"	set guioptions-=1
"	set guioptions-=L
"	set guioptions-=r
	set guioptions-=R
end

"Autocomplete
set omnifunc=syntaxcomplete#Complete

map <F2> :tabnew<CR>
map <F3> gt
map <silent> <F8>	:Explore<CR>
map <silent> <S-F8> 	:sp +Explore<CR>
"Ctrl-space autopomplete
inoremap <C-space> <C-x><C-o>
map <F12> :NERDTree<CR>

"PLUGINS
"Nerdtree
"snipMate
