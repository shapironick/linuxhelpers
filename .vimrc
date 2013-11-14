"enable easy moduel managemnt"
execute pathogen#infect()
let g:airline_powerline_fonts=1 "make the powerline look groovy
"Settings for vim-pad notetaking app
let g:pad_dir = "~/Notes/"
let g:pad_window_height=16
let g:pad_window_width=40
"let g:pad_position_list="right"
"let g:pad_postion_pads="right"
"let g:pad_open_in_split=0
" Ideas for this vim setup taken from: 
"     http://nvie.com/posts/how-i-boosted-my-vim/
set nocompatible
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
if &t_Co >= 256 || has("gui_running")
   colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif
set pastetoggle=<F2> " enable/disable pastemode
" enable to write file if forgotton to sudo
cmap w!! w !sudo tee % >/dev/nu 

