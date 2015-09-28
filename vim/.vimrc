" vim:fdm=marker
if v:progname =~? "gvim"
    set guioptions=
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 12,Fixed\ 12
endif
" evim exit {{{
if v:progname =~? "evim"
  finish
endif "}}}
" Plugin declaration {{{
set nocompatible
filetype off "required for vundle
set rtp+=~/.vim/bundle/Vundle.vim " runtime path to include vundle
call vundle#begin()
Plugin 'gmarik/Vundle.vim'              "Plugin manager
Plugin 'tpope/vim-fugitive'             "git support
Plugin 'chriskempson/base16-vim'        "colorschemes
Plugin 'flazz/vim-colorschemes'         "colorschemes
Plugin 'lilydjwg/colorizer'             "display hexcolors inline
Plugin 'kien/ctrlp.vim'                 "fuzzy file finder
Plugin 'LaTeX-Box-Team/LaTeX-Box'       "lightweight latex-plugin
Plugin 'itchyny/lightline.vim'          "statusline
Plugin 'scrooloose/nerdtree'            "file browser
Plugin 'scrooloose/syntastic'           "syntax error checker
Plugin 'vim-pandoc/vim-pandoc'          "markdown plugin
Plugin 'vim-pandoc/vim-pandoc-syntax'   "with syntax highlighting
Plugin 'tpope/vim-surround'             "extend surround 
Plugin 'tpope/vim-repeat'               "repeat functionality for tpope plugins
call vundle#end()
" }}}
" Plugin settings {{{
" Lightline {{{
set laststatus=2
set noshowmode
" }}}
" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" NERDtree{{{
nnoremap <silent> <c-t> :NERDTreeToggle<CR>
" }}}
" }}}
" Search options {{{
set hlsearch        "highlight search
set incsearch       "search as you type
set ignorecase 	    "ignore case when searching
set smartcase	    "except if there are at least one upper case letter
" }}}
" User interface {{{
set number          "show line numbering
set ruler           "show the cursors position
set cursorline      "underline the current line
set scrolloff=5     "leave some lines at top bottom when scrolling
set shortmess+=I    "no welcome message
syntax on           "syntax highlighting
filetype on         "check filetype
filetype indent on  "automaticly indent
filetype plugin on  "use ftplugin.vim
set t_Co=256        "Terminal supports 256 colors
set background=dark "with dark bwombat
colorscheme gruvbox

set list
set lcs=tab:\|\ ,trail:~,extends:>,precedes:>
" }}}
" Indentation and tab settings {{{
set expandtab
set shiftwidth=4
set tabstop=4
set smartindent autoindent
" }}}
" Backup swapfiles and undofiles {{{
set backup
set undofile
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set undodir=~/.vim/undo
" }}}
" Keymapping {{{
"toggle folds on space
nnoremap <silent> <Space> za
vnoremap <silent> <Space> za
"escape from insert mode
inoremap jj <Esc>
"logical up-down
nnoremap <silent> k gk
nnoremap <silent> j gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja
"consistent Y to D,C
nnoremap Y y$
"split line when not in C or /bin/*sh
nnoremap K i<CR><Esc>
" }}}
" Behaviour  {{{
set mouse=a                     "enable mouse
set vb t_vb=                    "visual bell
set backspace=indent,eol,start  "backspace over everything
set hidden                      "hide abandoned buffers
set wildmenu                    "popup autocompletion
set splitbelow                  " :spl on bottom
set splitright                  " :vspl on right
" }}}
" Other file types {{{
autocmd BufNewFile,BufRead *.sage   set syntax=python
augroup filetype
   au BufRead,BufNewFile *.flex,*.jflex    set filetype=jflex
 augroup END
 au Syntax jflex    so ~/.vim/ftplugin/jflex.vim
" }}}
" Functions {{{
function! RangeChooser()
    let temp = tempname()
    " The option "--choosefiles" was added in ranger 1.5.1. Use the next line
    " with ranger 1.4.2 through 1.5.0 instead.
    "exec 'silent !ranger --choosefile=' . shellescape(temp)
    exec 'silent !ranger --choosefiles=' . shellescape(temp)
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>
" }}}
