"  David Lin's .vimrc File

"|--------|
"| Vundle |
"|--------|

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"|---------|
"| Plugins |
"|---------|

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
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

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


"|-----------------|
"| .vimrc Settings |
"|-----------------|

" Set NERDTree mapping
nnoremap <C-n> :NERDTreeToggle<CR>

" Go to next and previous buffer
nnoremap ;; :bn<CR>
nnoremap aa :bp<CR>

" Activate Airline Theme Bar
set laststatus=2

" Set Airline Theme
" https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='simple'

" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

" Show word count
let g:airline#extensions#wordcount#enabled = 1

" Set large history and undo buffer
set history=1000
set undolevels=1000

" Enable vim-color-pencil when starting Goyo
function! s:goyo_enter()
	colorscheme pencil
endfunction

function! s:goyo_leave()
	:let g:airline_theme='simple'
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


" Map jk, jj, and kk to <esc>
imap jj <esc>
imap kk <esc>
imap jk <esc>

" Easier split navigations
" Instead of ctrl+w followed by motion key, it's just ctrl-<motion key>
" And in case you've forgotten how to split windows:
" :vsp , :sp
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Normal Non-recursive Map (nnoremap) to expand vertical split window full screen
nnoremap <F2> <C-w>=
nnoremap <F3> <C-w><bar>

" Normal Non-recursive Map (nnoremap) to expand present windows horizontally
nnoremap <F4> <C-w>_

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

" Set line number by default
set relativenumber

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

"|----------------|
"| Linux Commands |
"|----------------|


" Add the following line to Ubuntu "Startup Applications" to remap CapsLock to Control Key
" setxkbmap -option 'caps:ctrl_modifier'

"|--------------|
"| VIM Commands |
"|--------------|


"|------------------------+-------------------------|
"| Description            | Command                 |
"|------------------------+-------------------------|
"| Open web page from vim | gx                      |
"|------------------------+-------------------------|
"| Table Mode             | <leader>tm              |
"|------------------------+-------------------------|
"| Easy Motion            | <leader><leader>w       |
"|                        | <leader><leader>b       |
"|------------------------+-------------------------|
"| Execute shell cmd      | :!<command>             |
"|------------------------+-------------------------|
"| List buffers           | :ls                     |
"| Open buffer            | :b<#>                   |
"|------------------------+-------------------------|
"| Sustitution            | :s/match/new_string/gci |
"|                        | g global                |
"|                        | c confirm               |
"|                        | i case insensitive      |
"|                        | I case sensitive        |
"|------------------------+-------------------------|
"| Change inner word      | ciw                     |
"| Change inner quotes    | ci"                     |
"| Change inner paragraph | cip                     |
"| Change inner tag       | cit                     |
"| Change as sentence     | cas                     |
"|                        |                         |
"|                        | Other verbs:            |
"|                        | delete (d)              |
"|                        | indent (>)              |
"|                        | visually select (v)     |
"|                        | yank (y)                |
"|------------------------+-------------------------|
"| Search for string      | /   search forward      |
"|                        | ?   search backward     |
"|------------------------+-------------------------|

"|-----------------|
"| Custom Mappings |
"|-----------------|

"|----------------------------------------+---------|
"| Description                            | Command |
"|----------------------------------------+---------|
"| Next buffer                            | ;;      |
"| Previous Buffer                        | aa      |
"| Equally sized split windows            | <F2>    |
"| Expand present vert split window       | <F3>    |
"| Expand present horizontal spit windows | <F4>    |
"| Remove all trailing whitespaces        | <F5>    |
"| Change split window                    | Ctrl-J  |
"|                                        | Ctrl-K  |
"|                                        | Ctrl-H  |
"|                                        | Ctrl-L  |
"| Start NERDTree                         | Ctrl-n  |
"
