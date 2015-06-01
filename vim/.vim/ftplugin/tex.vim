"compile keybinds
nnoremap <F11> :w<CR>:!pdflatex %<CR>
command PDF silent !zathura `echo % | sed -e 's/tex$/pdf/'` 2>/dev/null & disown <CR>

"tex-fold
"Per default, tex-fold folds figure, table, align, lstlisting and frame
"environments. If you want to fold more, you can list them with: >
"let g:tex_fold_additional_envs = ['solution', 'problem', 'enumerate', 'tabular', 'center', 'itemize']

"latex-box
let g:LatexBox_Folding          = 1   " Turn on/off folding
"let g:LatexBox_fold_text        = 1   " Turn on/off LatexBox fold text function
"let g:LatexBox_fold_preamble    = 1   " Turn on/off folding of preamble
"let g:LatexBox_fold_parts       = 1   " Define parts (eq. appendix, frontmatter) to fold
"let g:LatexBox_fold_sections    = 1   " Define section levels to fold
"let g:LatexBox_fold_envs        = 1   " Turn on/off folding of environments
"let g:LatexBox_fold_toc         = 1   " Turn on/off folding of TOC
"let g:LatexBox_fold_toc_levels  = 1   " Set max TOC fold level
set et sw=2 ts=2

"wrap words
set wrap
set linebreak
