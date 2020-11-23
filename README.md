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
- powershell terminal (run as Administrator)
- choco install pycharm-community 
- choco install vim
- cd vim
- vim --version | grep _vimrc  (to get path of _vimrc file)
- git clone https://github.com/davidclin/vim.git
- git clone https://github.com/VundleVim/Vundle.vim.git ./vimfiles/bundle/Vundle.vim
- cp .vimrc ../_vimrc  (Windows 10 GVIM looks for _vimrc instead of .vimrc)
- cd ..
- remove lines from _vimrc
<pre>
set nocompatible
filetype off
</pre>
- uncomment lines
<pre>
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
</pre>
