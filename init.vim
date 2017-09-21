"Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" PLUGIN LIST

" Syntax completion
Plug 'https://github.com/Valloric/YouCompleteMe'

" Skin and looks for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

colorscheme solarized

"Airline power bar config
let g:airline#extensions#tabline#enabled = 1
let g:solarized_termcolors=256
let g:airline_theme='solarized'
set background=light

" Normal config
set number

" New hotkeys

" Use alt - j or k to move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
