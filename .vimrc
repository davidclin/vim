"    David Lin's .vimrc File
"
"    _   _   _   _   _   _
"   / \ / \ / \ / \ / \ / \
"  ( v | u | n | d | l | e )
"   \_/ \_/ \_/ \_/ \_/ \_/

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


"    _   _   _   _   _   _   _
"   / \ / \ / \ / \ / \ / \ / \
"  ( p | l | u | g | i | n | s )
"   \_/ \_/ \_/ \_/ \_/ \_/ \_/
"

Plugin 'VundleVim/Vundle.vim'     " let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'reedes/vim-colors-pencil'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"    _   _   _   _   _   _
"   / \ / \ / \ / \ / \ / \
"  ( . | v | i | m | r | c )
"   \_/ \_/ \_/ \_/ \_/ \_/
"
"
" Activate Airline Theme Bar
set laststatus=2

" Set Airline Theme
:let g:airline_theme='dark'

" Enable vim-color-pencil when starting Goyo
function! s:goyo_enter()
	colorscheme pencil
endfunction

function! s:goyo_leave()
	:let g:airline_theme='dark'
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


" Map jj and kk to <esc>
imap jj <esc>
imap kk <esc>

" Easier split navigations
" Instead of ctrl+w followed by motion key, it's just ctrl-<motion key>
" And in case you've forgotten how to split windows:
" :vsp , :sp
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Keep Searched Text Centered
nmap n nzz
nmap N Nzz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" Keep Cursor Centered Vertically
nmap j jzz
nmap k kzz

" Set the font and height
set guifont=Courier_New:h15

" Set autoindent
" ctrl-d to un-indent
set autoindent

" Use linenumber in Insert mode
" Use Relativenumber in CMD mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" Highlight those annoying whitespaces
" Source: http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Fold lines that start with /* and end of */
"    zM  => fold all
"    zR  => unfold all
"    za  => toggle fold
set foldmethod=marker
set foldmarker=/*,*/

" Enable syntax and plugins (for newtrw)
syntax enable
filetype plugin on

" The following are commented out as they cause vim to behave a lot
" " differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
                        " Note: If you enable mouse usage, right-clicking
			" will activate visual mode preventing you from
			" pasting to file.

"   _   _   _   _   _
"  / \ / \ / \ / \ / \
" ( l | i | n | u | x )
"  \_/ \_/ \_/ \_/ \_/
"

" Add the following line to Ubuntu "Startup Applications" to remap CapsLock to Control Key
" setxkbmap -option 'caps:ctrl_modifier'



"   _   _   _   _   _   _   _   _
"  / \ / \ / \ / \ / \ / \ / \ / \
" ( c | o | m | m | a | n | d | s )
"  \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/
"

| Description            | Command           |
|------------------------+-------------------|
| Open web page from vim | gx                |
|------------------------+-------------------|
| Table Mode             | <leader>tm        |
|------------------------+-------------------|
| Easy Motion            | <leader><leader>w |
|                        | <leader><leader>b |
|------------------------+-------------------|
| Execute shell cmd      | :!<command>       |
|------------------------+-------------------|
