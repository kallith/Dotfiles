nnoremap <F11> :w<CR>:!python -i  %<CR>
inoremap # X<c-h>#

command SynPy2 silent let g:syntastic_python_python_exec = '/usr/bin/python2'
command SynPy3 silent let g:syntastic_python_python_exec = '/usr/bin/python3'
