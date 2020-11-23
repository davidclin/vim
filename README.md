# vim

<pre>
   _   _   _  
  / \ / \ / \ 
 ( V | I | M )
  \_/ \_/ \_/ 
</pre>

This repo contains useful VIM settings and Plugins I use in my .vimrc (for Linux) and _vimrc (for Windows).

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

# Quick Windows 10 Install with gVIM 

## Install apps
- open Terminal (run as Administrator)
- choco install -y vim 
- pin gVIM (not VIM) to your taskbar
- (OPTIONAL) choco install -y python3
- (OPTIONAL) choco install -y git 
- (OPTIONAL) pip install boto3

## Install Vundle
- git clone https://github.com/VundleVim/Vundle.vim.git $HOME/vimfiles/bundle/Vundle.vim  

## To find location of all vimrc file(s)
This may come in handy...
- vim --version | grep vimrc  (to get path of all vimrc files)

For Linux  , .vimrc usually lives under ~/.vimrc
For Windows, _vimrc usually lives under $HOME

## Pull repo and copy _vimrc to $HOME
- git clone https://github.com/davidclin/vim-davidclin.git
- cd vim-davidclin
- cp _vimrc $HOME\_vimrc  (tip: use Notepad if you're unable to edit the file using other programs then copy file to $HOME\_vimrc)

## Install VIM plugins
- launch gVIM
- :PluginList
- :PluginInstall
- :PluginUpdate

# Quick Windows 10 Install with Pycharm+IdeaVIM Integration  
- choco install -y pycharm-community 
- pin Pycharm to taskbar 
- launch Pycharm and download IdeaVim and AWS Toolkit during install
- copy _vimrc to _ideavimrc
- (OPTIONAL) create new Python file in Pycharm then Ctrl+Alt+S --> Project:PycharmProjects --> Python Interpreter --> '+' sign --> type boto3 --> Install package
