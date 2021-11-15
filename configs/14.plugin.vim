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

nnoremap <silent>    <C-T> :BufferPrevious<CR>
nnoremap <silent>    <C-S-T> :BufferNext<CR>

let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = v:false
let bufferline.closable = v:false

let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'
