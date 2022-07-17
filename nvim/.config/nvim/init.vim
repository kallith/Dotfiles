" User interface
set termguicolors
set number
set cursorline
set showtabline=1
set list
set listchars=tab:\|\ ,trail:~,extends:>,precedes:<,nbsp:+

" Tabs and indentation
set expandtab
set shiftwidth=4
set tabstop=4
set smartindent
set autoindent

" Search settings
set hlsearch
set ignorecase
set smartcase

syntax on
filetype on
filetype indent on
filetype plugin on

" Store swap, backup and undo.
set swapfile
set directory=~/.local/share/nvim/swap//
set backup
set backupdir=~/.local/share/nvim/backup//
set undofile
set undodir=~/.local/share/nvim/undo//

" Keybindings
set mouse=a
nnoremap <silent> k gk
nnoremap <silent> gk k
nnoremap <silent> j gj
nnoremap <silent> gj j

lua require('plugins')
