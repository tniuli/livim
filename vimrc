"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 1. basic configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.1. Encoding and language
set encoding=UTF-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8
" language message zh_CN.UTF-8
"set langmenu=zh_CN.UTF-8

" 1.2. column limitations: 80 chars
if exists('+colorcolumn')
  set colorcolumn=100
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Get out of VI's compatible mode..
set nocompatible
set nobackup
set number 
set numberwidth=4
"colorscheme  eclipse " skittles_dark
colorscheme  vividchalk
colorscheme desertEx 
colorscheme candycode 
colorscheme ironman 
colorscheme vc 
"colorscheme  desert " skittles_dark
set mouse=v "use mouse in vim
" mousetime	maximum time in msec to recognize a double-click
set mouset=500

"set paste

" use tab instead of space
" set expandtab  
set softtabstop=2
set shiftwidth=2
" smarttab	a <Tab> in an indent inserts 'shiftwidth' spaces
set smarttab
set tabstop=2
" softtabstop	if non-zero, number of spaces to insert for a <Tab>
set softtabstop=2
" expandtab	expand <Tab> to spaces in Insert mode
set expandtab
set autoindent
" smartindent	do clever autoindenting
set smartindent
" cindent	enable specific indenting for C code
set cindent

"undolevels	maximum number of changes that can be undone
set undolevels=1000

"showmatch	when inserting a bracket, briefly jump to its match
set showmatch
"matchtime	tenth of a second to show a match for 'showmatch'
set matchtime=5
"matchpairs	list of pairs that match for the "%" command
set matchpairs=(:),{:},[:]

set t_Co=256
set cursorline
highlight CursorLine guibg=yellow

" set cursorcolumn
"hi cursorline guibg = gray guifg = red

" How many lines of history vim has to remember"
set history=100000
set hlsearch
set incsearch

" Set magic on
set magic

"swapfile	use a swap file for this buffer
"	(local to buffer)
se	swf

" autowrite	automatically write a file when leaving a modified buffer
set autowrite
" writeany	always write without asking for confirmation
set writeany
" set to auto read when an open file changed
set autoread
	
" show matching bracets
set showmatch

" Always hide the statusline
"set laststatus=2

" insentive of case
set ignorecase
" smartcase	override 'ignorecase' when pattern has upper case characters
set smartcase

"set foldenable
"set fdm=syntax 
"set foldopen=all
"set foldminlines=3

" set shell for VIM
"set shell=/bin/bash

" Always show current position
set ruler
" Display an incomplete command in the lower right corner of the Vim window
set showcmd
"more	pause listings when the screen is full
set more

" The commandbar is 1 high
set cmdheight=1

" Set backspace
set backspace=eol,start,indent

" Increase search mode
set incsearch

" Set mapleader
let mapleader = "\\"
let g:mapleader = "\\"
" C.vim mapleader
let g:C_MapLeader = '\\'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 2. taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
"let Tlist_Close_On_Select = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Highlight_Tag_On_BufEnter = 0
let Tlist_WinWidth = 30
"let Tlist_Use_Horiz_Window = 1
map <F3> : TlistToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 3. NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F2> : NERDTreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 4. bufExplorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <F4> : BufExplorer<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 5. c.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype plugin on
filetype indent on
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 6. neocomplcache
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup = 1
let g:acp_enable_AtStartup = 1 "disable AutoComplPop
let g:neocomplcache_enable_smart_case = 1 "enable smart case
let g:neocomplcache_enable_camel_case_completion = 1 " enable camel case completion
let g:neocomplcache_enable_underbar_completion = 1 " underbar completion
let g:neocomplcache_min_syntax_length = 3 " minimum syntax kerword length
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_enable_auto_select = 1
let g:pydiction_location = '~/.vim/after/ftplugin/complete-dict'
let g:pydiction_menu_height = 20

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 7. minBufExplorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplModSelTarget = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 8. cscope [has been put into ~/.vim/plugin/cscope_macros.vim]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F8>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
map <F8>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
map <F8>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
map <F8>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
map <F8>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
map <F8>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
map <F8>i :cs find i <C-R>=expand("<cfile>")<CR><CR>	
map <F8>d :cs find d <C-R>=expand("<cword>")<CR><CR>	

map <F9><F9> : !cscope -Rbq <CR>
map <F9> : !ctags -R --c++-kinds=+p --fields=+iaS --extra=+q . ; find . -name "*.h" -o -name "*.c"-o -name "*.cc" -o -name "*.cpp" > cscope.files;cscope -Rbq -i cscope.files <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 9. grep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F6> : Grep <CR>
map <F6><F6> : Rgrep<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" a.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F5> : A <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" YankRing.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F4> : YRShow <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" mru.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let MRU_File="~/.vim_mru_files.txt"
let MRU_Max_Entries=1000
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'
let MRU_Window_Height=15
"let MRU_Use_Current_Window=1
let MRU_Auto_Close=0
let MRU_Add_Menu=0
let MRU_Max_Menu_Entries = 20 
let MRU_Max_Submenu_Entries = 15 
map <leader>m : MRU <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  omnicppcomplete 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocp
filetype plugin on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  enable bash/python 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keybind to invoke Bash/Python
nmap <leader>b  :!bash<cr>
nmap <leader>p  :!python<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  .vimrc 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mark as loaded
let g:vimrc_loaded = 1
" About Vimrc
"Fast reloading of the .vimrc
map <silent> <leader>sr :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>
" Fast quit and saving

map <leader><leader> :wa<cr>
map <leader>q :wqa<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" word complete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
":autocmd BufEnter * call DoWordComplete() 
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabRetainCompletionType = 2
let g:SuperTabDefaultCompletionType = "<C-X><C-O>" 
