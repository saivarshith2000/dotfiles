" nerdtree config

" start nerdtree only no files are specified on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" start nerdtree on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" nerdtree shortcut
map <C-n> :NERDTreeToggle<CR>

" arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" close file if the nerdtree tab is the only one
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" sync file list realtime
let NERDTreeAutoDeleteBuffer = 1

"make it pretty baby
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"mouse support
let NERDTreeMouseMode=3

" hide ignored files
let NERDTreeIgnore=['.git$[[dir]]', '.swp']

" remove conflict with bd
map <C-w> :bp<cr>:bd #<cr>
