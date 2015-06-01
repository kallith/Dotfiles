"compile keybinds
nnoremap <F11> :w<CR>:!g++ -Wall -pedantic -ggdb % && valgrind --leak-check=full ./a.out<CR>
