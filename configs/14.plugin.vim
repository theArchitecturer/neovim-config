"#                    _ _                 
"# _ __   ___ _ __ __| | |_ _ __ ___  ___ 
"#| '_ \ / _ \ '__/ _` | __| '__/ _ \/ _ \
"#| | | |  __/ | | (_| | |_| | |  __/  __/
"#|_| |_|\___|_|  \__,_|\__|_|  \___|\___|

"autocmd vimenter * NERDTree	"auto open nerdtree when vim start
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif	"auto open nerdtree if no file were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif	"open nerdtree automatically when vim start up on a opening directory
" map <leader>n :NERDTreeToggle<CR>	 
" map <C-n> :NERDTreeToggle<CR>	 
"Toggle NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif	"Close vim if the onky open window left is NERDTree
" let g:NERDTreeDirArrowExpandable = '⇲' "▸
" let g:NERDTreeDirArrowCollapsible = '▾'
" let NERDTreeShowHidden=1	"Show hidden file
" set guifont=Fira\ Code\ Nerd\ Font\ 21

"           _       _                                              _   _              _
" _ __ __ _(_)_ __ | |__   _____      _ _ __   __ _ _ __ ___ _ __ | |_| |__   ___ ___(_)___
"| '__/ _` | | '_ \| '_ \ / _ \ \ /\ / | '_ \ / _` | '__/ _ | '_ \| __| '_ \ / _ / __| / __|
"| | | (_| | | | | | |_) | (_) \ V  V /| |_) | (_| | | |  __| | | | |_| | | |  __\__ | \__ \
"|_|  \__,_|_|_| |_|_.__/ \___/ \_/\_/ | .__/ \__,_|_|  \___|_| |_|\__|_| |_|\___|___|_|___/
"                                      |_|

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

"nvim-tree
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' , 'go.sum' ] "empty by default
let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
"
let g:nvim_tree_window_picker_exclude = {
    \   'buftype': [
    \     'terminal'
    \]
    \}
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 , 'go.mod': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

nnoremap <silent>    <C-T> :BufferPrevious<CR>
nnoremap <silent>    <C-S-T> :BufferNext<CR>

let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = v:false
let bufferline.closable = v:false

let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'
