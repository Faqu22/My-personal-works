call plug#begin('~/.local/share/nvim/plugged')
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'prettynihil/vim-multicolor'
call plug#end()
let g:ale_linters = {'c': ['betty', 'gcc']}
let g:ale_c_betty_options = '-w'
set number
set mouse=a
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_set_highlights = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
set laststatus=2
set noshowmode
if (has("termguicolors"))
  set termguicolors
endif

highlight Normal ctermbg=235 guibg=#17202A
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
  \   'right': [ [ 'lineinfo' ],
  \              [ 'percent' ],
  \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
  \ },
  \ 'component_expand': {
  \   'fileformat': 'lightline#fileformat#fileformat',
  \   'fileencoding': 'lightline#fileformat#fileencoding'
  \ },
  \ 'component_type': {
  \   'gitbranch': 'branch'
  \ },
  \ }
set showtabline=2
set tabline=%!lightline#tabs()
let g:asyncrun_open = 6
let g:asyncrun_exit = 1
let g:asyncrun_listbuf = 1
let g:asyncrun_maxbuf = 10
let g:asyncrun_buildin_maker = {}
let g:asyncrun_buildin_maker['go'] = 'gobuild'
let g:asyncrun_buildin_maker['python'] = 'pylint'
let g:asyncrun_buildin_maker['vim'] = 'vint'
let g:asyncrun_buildin_maker['lua'] = 'luac -p'
let g:asyncrun_buildin_maker['perl'] = 'perl -c'
let g:asyncrun_buildin_maker['sh'] = 'shellcheck'
let g:asyncrun_buildin_maker['typescript'] = 'tsc --noEmit'
let g:asyncrun_buildin_maker['javascript'] = 'eslint'
let g:asyncrun_buildin_maker['rust'] = 'rustc'
let g:asyncrun_buildin_maker['dart'] = 'dartanalyzer'
let g:asyncrun_buildin_maker['dart-test'] = 'flutter test'
let g:asyncrun_buildin_maker['d'] = 'dmd'
let g:asyncrun_buildin_maker['java'] = 'javac'
let g:asyncrun_buildin_maker['scala'] = 'scalac'
let g:asyncrun_buildin_maker['kotlin'] = 'kotlinc'
let g:asyncrun_buildin_maker['php'] = 'php -l'
let g:asyncrun_buildin_maker['cpp'] = 'g++ -Wall -o'
let g:asyncrun_buildin_maker['make'] = 'make'


nnoremap <F4> :NERDTree<CR>
nnoremap <F1> :wq<CR>
nnoremap <F2> :AsyncRun betty %<CR>
