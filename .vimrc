" Enter the current millenium
set nocompatible

" Map jj and kk to <esc>
imap jj <esc>
imap kk <esc>



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

" Set color gvim color scheme
" To see list of available color schemes, open gvim and goto to 
" Edit -> Color Scheme
color industry

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

" Enable highlight search
set hlsearch

" Search down into subfolders
" Provies tab-completion for all file-related tasks
set path =$PWD/**

" Display all matching files when we tab complte
set wildmenu


" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)


" Map ctrl-backspace in normal mode to delete all spaces and tabs at the end
" of lines
nmap <silent> <c-bs> :%s/\s\+$//<cr>



" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

