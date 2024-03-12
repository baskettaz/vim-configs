set clipboard=unnamed
set encoding=utf-8

" split navigations
"------------------
set nu rnu

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J> " move to the split below
nnoremap <C-K> <C-W><C-K> " move to the split above 
nnoremap <C-L> <C-W><C-L> " move to the split right
nnoremap <C-H> <C-W><C-H> " move to the split left 

" enable folding
"---------------
set foldmethod=indent
set foldlevel=99

nnoremap <space> za " enable folding with the spacebar


" Python Indentations
"--------------------
au BufnewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4 
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab 
    \ set autoindent 
    \ set fileformat=unix

au BufRead,BufNewFile *.py, *.pyw, *.c, *.h match BadWhitespace /\s\+$/


"" Python with virtualenv support
""-------------------------------
"py << EOF
"import os
"import sys
"
"if "VIRTUAL_ENV" in os.environ:
"    project_base_dir = os.environ["VIRTUAL_ENV"]
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"    execfile(activate_this, dict(__file__=activate_this)
"EOF

let python_highlight_all=1
syntax on


" Full stack development
"-----------------------
au BufnewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2









" HERE COME ALL PLUGINS
"----------------------
" Plugin 'tmhedberg/SimplyFold'
" Plugin 'vim-scripts/indentpython.vim'
" Bundle 'Valloric/YouCompleteMe'
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Plugin 'vim-syntastic/syntastic'
" Plugin 'nvie/vim-flake8'

" Plugin 'jnurmine/Zenburn'
" Plugin 'altercation/vim-colors-solarized'
" if has("gui_running")
"     set background=dar
"     colorscheme solarized
" else
"     colorscheme zenburn
" endif
" call togglebg#map("<F5>")


" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
" let NERDTreeIgnore=['\.pyc$, '\~$'] "ignore files in NERDTree


" Plugin 'kien/ctrlp.vim' " search for ANYTHING? from VIM
" Plugin 'tpope/vim-fugitive' "GIT-Integration

" powerline (statusbar)
"----------------------
" Plugin 'Lokaltog/powerline', {'rtp':'powerline/bindings/vim/'} 



