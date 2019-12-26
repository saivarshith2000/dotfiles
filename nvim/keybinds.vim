"Source this file before anyother because, they may contains the leader key
"which is remapped here.

"Remap leader to space
map <Space> <Leader>

" Code navigation


"leader v to vertical split
map <leader>v :vsplit<CR>
map <leader>h :split<CR>
" navigate splits using leader
nnoremap <leader><Left> <C-W><C-H>
nnoremap <leader><Right> <C-W><C-L>
nnoremap <leader><Up> <C-W><C-K>
nnoremap <leader><Down> <C-W><C-J>
" close all splits and exit
map <leader>q :wqa<CR>

"focus nerdtree
map <C-b> :NERDTreeFocus<CR>
