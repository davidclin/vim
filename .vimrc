" ##########################################################
" ##########       David Lin's .vimrc File        ##########
" ########## https://github.com/davidclin/vim.git ##########
" ##########################################################
"
" ############################
" ########## Vundle ##########
" ############################
"
" Vundle is an easy to use and powerful VIM plugin manager.
"
" Step 1. Download
"
"   (for Linux)
"   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
"   (for Windows)
"   git clone https://github.com/VundleVim/Vundle.vim.git ./vimfiles/bundle/Vundle.vim
"
"   Assumes Git is installed in c:\Users\<username> directory and this path is your $HOME.
"
" Step 2. Add Plugins
"
"   Add your favorite plugins under the 'Plugins' section below
"
" Step 3. Install Plugins
"
"   cd vim
"   cp .vimrm ~/.vimrc
"   vim
"   :PluginList
"   :PluginInstall
"   :PluginUpdate
"
"   Plugin Commands Summary
"     :PluginList       - lists configured plugins
"     :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"     :PluginSearch foo - searches for foo; append `!` to refresh local cache
"     :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"   See :h vundle for more details or wiki for FAQ
"
"
" #####################################
" ########## Custom Mappings ##########
" #####################################
"
"|----------------------------------------+---------|
"| Description                            | Command |
"|----------------------------------------+---------|
"| Next buffer                            | ;;      |
"| Previous Buffer                        | aa      |
"| Equally sized split windows            | <F2>    |
"| Expand present vert split window       | <F3>    |
"| Expand present horizontal spit windows | <F4>    |
"| Remove all trailing whitespaces        | <F5>    |
"| Change split window                    | Ctrl-j  |
"|                                        | Ctrl-k  |
"|                                        | Ctrl-h  |
"|                                        | Ctrl-l  |
"| Start NERDTree                         | Ctrl-n  |
"| Close NERDTree                         | q       |
"| NERDTree menu                          | m       |
"|----------------------------------------+---------|
"
"
" #########################################
" ########## Useful VIM Commands ##########
" #########################################
"
" |------------------------+-----------------------------------|
" | Description            | Command                           |
" |------------------------+-----------------------------------|
" | Find number of matches | :%s/pattern//gn                   |
" |                        |                                   |
" |                        | Omit g to display number of lines |
" |                        | where patten matches like so:     |
" |                        | :%s/pattern//n                    |
" |------------------------+-----------------------------------|
" | Deletes lines that     | :g/profile/d                      |
" | match pattern          |                                   |
" |------------------------+-----------------------------------|
" | Delete all lines that  | :%g!/price/d                      |
" | that do NOT match      |                                   |
" | pattern                |                                   |
" |------------------------+-----------------------------------|
" | Delete to end of line  | :%s/{pattern}.*//                 |
" | after pattern          |                                   |
" |------------------------+-----------------------------------|
" | Surround entire line   | yss"                              |
" | with quotation         |                                   |
" |                        |                                   |
" | Delete quotation       | ds"                               |
" | surrounding text       |                                   |
" |                        |                                   |
" | Add quotation around   | add long string of dashes         |
" | multiple lines         | at beggining/end of lines         |
" |                        | then cntl+v lines followed by     |
" |                        | S"                                |
" |------------------------+-----------------------------------|
" | Open web page from vim | gx                                |
" |------------------------+-----------------------------------|
" | Table Mode             | <leader>tm                        |
" |                        | use single pipe to create cell(s) |
" |                        | use double pipe to create line    |
" |                        | use :Tableize for existing comma  |
" |                        | separated data                    |
" |------------------------+-----------------------------------|
" | Easy Motion            | <leader><leader>w                 |
" |                        | <leader><leader>b                 |
" |------------------------+-----------------------------------|
" | Execute shell cmd      | :!<command>                       |
" |------------------------+-----------------------------------|
" | List buffers           | :ls                               |
" | Open buffer            | :b<#>                             |
" |------------------------+-----------------------------------|
" | Substitution           | :s/match/new_string/[g            |
" |                        | g global                          |
" |                        | c confirm                         |
" |                        | i case insensitive                |
" |                        | I case sensitive                  |
" |------------------------+-----------------------------------|
" | Change inner word      | ciw                               |
" | Change inner quotes    | ci"                               |
" | Change inner paragraph | cip                               |
" | Change inner tag       | cit                               |
" | Change as sentence     | cas                               |
" |                        |                                   |
" |                        | Other verbs:                      |
" |                        | delete (d)                        |
" |                        | indent (>)                        |
" |                        | visually select (v)               |
" |                        | yank (y)                          |
" |------------------------+-----------------------------------|
" | Search for string      | /   search forward                |
" |                        | ?   search backward               |
" |------------------------+-----------------------------------|
" | Search for string in   | :find <string>                    |
" | NerdTree               |                                   |
" |------------------------+-----------------------------------|
" | Invert line order      | :g/^/m0                           |
" |------------------------+-----------------------------------|
" | Fold lines that        | zM => fold all                    |
" | start with /*          | zR => unfold all                  |
" | ends with */           | za => toggle fold                 |
" |------------------------+-----------------------------------|
" | Pretty print JSON/HTML | :PrettyPrintJSON                  |
" |                        | :PrettyPrintHTML                  |
" |                        |                                   |
" |                        | Note: Requires python and tidy    |
" |------------------------+-----------------------------------|
" | Change gVIM font size  | :set guifont=*                    |
" |------------------------+-----------------------------------|
"
" ##########################################
" ########## Increase default register #####
" ##########################################
"
" set viminfo='20,<1000,s1000
"
"
" ################################################
" ########## Creating macro to record motions ####
" ################################################
"
" Type the letter 'q' followed by a character [a-z] to start recording
" Make your edits then hit 'q' to stop the recording
" Enter N@[a-z] where N is number of iterations and [a-z] is the letter
" chosen for your recording.
"
"
" ###########################################
" ########## Useful Linux Commands ##########
" ###########################################
"
" Add the following line to Ubuntu "Startup Applications"
" to remap CapsLock to Control Key:
"
" setxkbmap -option 'caps:ctrl_modifier'
"
"
" #################################
" ########## Useful Tips ##########
" #################################
"
" This is where you can set the VIM default directory path:
"   cd /home/user/my/work/dir (for Linux)
"   cd c:\Users\<username> (for Windows)

" _vimrc is to windows what .vimrc is to unix
" copy _vimrc to:
" c:\Users\<username>\vim\_vimrc (assuming you installed vim to this path ; recommended)
" #########################################
" ########## Useful VIM Settings ##########
" #########################################

set nocompatible
filetype off

" ###################################################################
" ########## Set the runtime path to include Vundle and initialize ##
" ###################################################################

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" (for Windows)
" set rtp+=$HOME/.vim/bundle/Vundle.vim/
" call vundle#begin('$HOME/.vim/bundle/')

" #############################
" ########## Plugins ##########
" #############################

Plugin 'VundleVim/Vundle.vim'   " let Vundle manage Vundle, required
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'itchyny/lightline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'reedes/vim-colors-pencil'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'airblade/vim-gitgutter'
Plugin 'davidhalter/jedi-vim'
" Plugin 'pearofducks/ansible-vim'

" All of your Plugins must be added before these lines:
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on


" ################################################################
" ##########  Put your non-Plugin stuff after this line ##########
" ################################################################

" Set NERDTree mapping
nnoremap <C-n> :NERDTreeToggle<CR>

" Go to next and previous buffer ; useful for switching tabs
nnoremap ;; :bn<CR>
nnoremap aa :bp<CR>

" Paste code with formating preserved
" set paste  (:set nopaste to undo)
" Note: When enabled, this will break your jj/kk/jk imap rules to Esc

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
" Instead of ctrl+w followed by motion key, use ctrl-<motion key>
" And in case you've forgotten how to split windows:
" :vsp , vertical   split
" :sp  , horizontal split
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

" Color scheme
" Useful for setting gVIM color scheme
" To view entire list of color schemes, type :colorscheme <ctl+d>
colorscheme evening



" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
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

" PrettyPrintJSON and PrettyPrintHTML
command! PrettyPrintJSON %!python -m json.tool
command! PrettyPrintHTML !tidy -mi -html -wrap 0 %
command! PrettyPrintXML !tidy -mi -xml -wrap 0 %


set colorcolumn=79

