set nocompatible "This fixes the problem where arrow keys do not function properly on some systems
syntax on "Enables syntax highlighting for programming languages
set mouse=a "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages
set autoindent "If your're indented, new lines will also be indented
set smartindent "Automatically indents lines after opening a bracket in programming languages
set backspace=2 "This makes the backspace key function like it does in other programs
set tabstop=4 "How much space Vim gives to a tab
set number "Enables line numbering
set smarttab "Improves tabbing
set shiftwidth=4 "Assists code formatting
set expandtab
set hlsearch
set cc=80
hi ColorColumn ctermbg=lightblue guibg=lightblue

autocmd bufnewfile /windows/Users/tushart91/Downloads/Dropbox/Study/*.* so ~/Documents/header.txt
autocmd bufnewfile /windows/Users/tushart91/Downloads/Dropbox/Study/*.* exe "1," . 7 . "g/filename :.*/s//filename\t" .expand("%")
autocmd bufnewfile /windows/Users/tushart91/Downloads/Dropbox/Study/*.* exe "1," . 7 . "g/course :.*/s//course\t\t" .strpart(escape(getcwd(), '/'),56)
autocmd bufnewfile /windows/Users/tushart91/Downloads/Dropbox/Study/*.* exe "1," . 7 . "g/date :.*/s//date\t\t" .strftime("%Y-%m-%d")

"colorscheme darkblue "Changes the color scheme
"setlocal spell "Enables spell checking
"set spellfile=~/.vimwords.add "The location of the spellcheck dictionary
"--The following commands make the navigation keys work like standard editors
"imap <silent> <Down> <C-o>gj
"imap <silent> <Up> <C-o>gk
"nmap <silent> <Down>gj
"nmap <silent> <Up>gk 
"--Ends navigation commands 
"--The following adds a sweet menu, press F4 to use it 
"source $VIMRUNTIME/menu.vim 
"set wildmenu 
"set cpo-=< 
"set wcm=<C-Z> 
"map <F4> :emun <C-Z> 
"--End sweet menu
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim', {'name':'vundle'}

" My Bundles here:
"

" original repos on github
"
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-pathogen.git'
Plugin 'tpope/vim-surround.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'digitaltoad/vim-jade.git'

" vim-scripts repos
Plugin 'comments.vim'
Plugin 'L9'
Plugin 'FuzzyFinder'
"Plugin 'comments'

" non github repos
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (ie. when working on your own plugin)
"Plugin 'file:///Users/gmarik/path/to/plugin'
call vundle#end()
filetype plugin indent on     " required!
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
