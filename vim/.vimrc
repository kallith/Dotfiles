" user interface
set number
set cursorline
set showtabline=1
set list
set listchars=tab:\|\ ,trail:~,extends:>,precedes:<,nbsp:+

" tabs and indents
set expandtab
set shiftwidth=4
set tabstop=4
set smartindent autoindent

" search options
set hlsearch
set ignorecase
set smartcase

" syntax and filetype
syntax on
filetype on
filetype indent on
filetype plugin on

" Backup swap and undo files
set backup
set undofile
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set undodir=~/.vim/undo

" misc
set mouse=a
set vb t_vb=
set hidden
set splitbelow
set splitright

" keybindings
nnoremap K ylpr<CR>
nnoremap Y y$
nnoremap <silent> k gk
nnoremap <silent> j gj

" Colorscheme
set background=dark
if (has("termguicolors"))
  set termguicolors
endif
let &t_ut=''
let g:gruvbox_italic=1
let g:gruvbox_contrast_light="soft"
let g:gruvbox_contrast_dark="soft"
colorscheme gruvbox

" Lightline
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
set noshowmode

