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
- Plugin 'ycm-core/YouCompleteMe'
- Plugin 'jiangmiao/auto-pairs'
- Plugin 'bronson/vim-trailing-whitespace'
- Plugin 'vim-syntastic/syntastic'
- Plugin 'scrooloose/nerdtree'
- Plugin 'dhruvasagar/vim-table-mode'
- Plugin 'tpope/vim-surround'
- Plugin 'tpope/vim-repeat'
- Plugin 'tpope/vim-fugitive'
- Plugin 'easymotion/vim-easymotion'
- Plugin 'itchyny/lightline.vim'
- Plugin 'kien/ctrlp.vim'
- Plugin 'junegunn/goyo.vim'
- Plugin 'tomtom/tcomment_vim'
- Plugin 'reedes/vim-colors-pencil'
- Plugin 'jistr/vim-nerdtree-tabs'
- Plugin 'airblade/vim-gitgutter'
- Plugin 'davidhalter/jedi-vim'

# Useful troubleshooting commands
- :options                            view set commands
- :echo has('python3_compiled')       verify if python3/dyn is enabled
- :echo has('win64')                  verify if 32-bit or 64-bit
- :sessions                           useful to view logs if plugin failure occurs
- :version                            contains useful info such as supported features, 32/64-bit compiled, dll used, etc.)

# Quick Windows 10 Install with gVIM 


## Install Vundle
- git clone https://github.com/VundleVim/Vundle.vim.git $HOME/vimfiles/bundle/Vundle.vim  

## To find location of all vimrc file(s) and order of operation
This may come in handy when trying to figure out where vim looks to execute .vimrc
- vim --version | grep vimrc  (to get path of all vimrc files)
Note: Output will be different when executed from Terminal versus from gVIM app

For Linux  , .vimrc usually lives under ~/.vimrc
For Windows, _vimrc usually lives under $HOME

Depending on the output of the command above
## Pull repo and copy _vimrc to $HOME
- git clone https://github.com/davidclin/vim.git
- cd vim
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
- copy _vimrc to $HOME\_ideavimrc
- (OPTIONAL) create new Python file in Pycharm then Ctrl+Alt+S --> Project:PycharmProjects --> Python Interpreter --> '+' sign --> type boto3 --> Install package
