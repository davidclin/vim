# vim

<pre>
   _   _   _  
  / \ / \ / \ 
 ( V | I | M )
  \_/ \_/ \_/ 
</pre>

This repo contains useful VIM settings and Plugins I use in my .vimrc file.

Summary
- Relative numbering
- Folding based based on markers that start with /* and end with */
- Highlighting tabs or whitespace at end of line in RED
- Keeping cursor centered vertically
- Mapping 'jj' and 'kk' to \<esc\>
- New mappings for navigating through split screens
- Remapping CapsLock to Ctrl (not really a capability of VIM)
- Paste code with formatting preserved

Plugins
- Plugin 'VundleVim/Vundle.vim'   " let Vundle manage Vundle, required
- Plugin 'tpope/vim-surround'
- Plugin 'tpope/vim-repeat'
- Plugin 'tpope/vim-fugitive'
- Plugin 'easymotion/vim-easymotion'
- Plugin 'itchyny/lightline.vim'
- Plugin 'kien/ctrlp.vim'
- Plugin 'junegunn/goyo.vim'
- Plugin 'tomtom/tcomment_vim'
- Plugin 'dhruvasagar/vim-table-mode'
- Plugin 'reedes/vim-colors-pencil'
- Plugin 'scrooloose/nerdtree'
- Plugin 'jistr/vim-nerdtree-tabs'
- Plugin 'airblade/vim-gitgutter'
- Plugin 'davidhalter/jedi-vim'

# Quick Windows 10 Install
- choco install vim
- terminal (as Administrator)
- vim --version | grep _vimrc  (to get path of _vimrc file)
- git clone https://github.com/davidclin/vim.git
- cd vim
- copy .vimrc to _vimrc
- comment 
<pre>
set nocompatible
filetype off
</pre>
- uncomment
<pre>
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
</pre>
