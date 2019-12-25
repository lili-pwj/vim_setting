set encoding=utf-8
filetype on 
filetype indent on
"let python_highlight_all=1
set number
set relativenumber
syntax enable
syntax on 
set tabstop=4
set softtabstop=4
"设置缩进为1个tab
set shiftwidth=4
set wildmenu
"高亮显示当前行列
set cursorline
set hlsearch
set ignorecase
set showmatch
noremap nh :nohl<CR>
set smartcase
"这里把空格键定义了 <leader>就是空格键
let mapleader=" "
map <leader>wq :wq<CR>
"保留5行代码可视
set scrolloff=5
set autoindent
set smartindent
set nocompatible
map <F12> :!python.exe %
"noremap h i
"noremap i k
"noremap j h
"noremap k j
nmap U 5k
"noremap y :undo

noremap J 5j
map s <nop>
map <Space><Space> <Esc>/<++><CR>:nohlsearch<CR>c4l
map S :w<CR>
map R :source$MYVIMRC<CR>
map Q :q<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map sk :set splitbelow<CR>:split<CR>
map si :set nosplitbelow<CR>:split<CR>
map <leader>i <C-w>k
map <leader>k <C-w>j
map <Space>j <C-w>h
map <Space>l <C-w>l
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize -5<CR>
map <right> :vertical resize +5<CR>
noremap <leader>gl :YcmCompleter GoToDeclaration<CR>
noremap <leader>gf :YcmCompleter GoToDefinition<CR>
noremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
map ss :w<cr>:r!python3 %<CR>
set foldmethod=indent
set foldlevel=99
noremap <space> za
"compile setting below
" Compile function
noremap r :MarkdownPreview<CR>
func! RunPython()
    exec "W"
    if &filetype == 'python'
        exec "!time python2.7 %"
    endif
endfunc
let g:ycm_autoclose_preview_window_after_completetion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_user_clangd=0
let g:ycm_python_binary_path="/bin/python3"
hi Normal ctermfg=252 ctermbg=none
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'    "vundle插件"
Plugin 'Valloric/YouCompleteMe'    "自动补全"
Plugin 'nathanaelkane/vim-indent-guides'    "缩进显示"
Plugin 'fholgado/minibufexpl.vim'    "操作多个文件"
Plugin 'Yggdroot/indentLine'    "缩进指示线"
Plugin 'scrooloose/nerdtree'    "树形目录配置"
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'    "显示文件的类、函数、变量"
Plugin 'dyng/ctrlsf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'vim-syntastic/syntastic'    "语法检查"
Plugin 'jiangmiao/auto-pairs'  "自动不全"
Plugin 'nvie/vim-flake8'
" vim-scripts 中的插件 "
Plugin 'taglist.vim'
Plugin 'godlygeek/tabular'
set autoindent
Plugin 'plasticboy/vim-markdown'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'suan/vim-instant-markdown'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
call vundle#end()
" 以下是markdown配置

let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_brower = 'chromium'
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_preview_options = {
			\ 'mkit': {},
			\ 'katex': {},
			\ 'uml': {},
			\ 'maid': {},
			\ 'disable_sync_scroll': 0,
			\ 'sync_scroll_type': 'middle',
			\ 'hide_yaml_meta': 1
			\ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
"source ~/.vim/markdown_add.vim

"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
noremap  ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
noremap  ,w <Esc>/ <++><CR>:nohlsearch<CR>c5l<CR>
noremap  ,n i---<Enter><Enter>
noremap  ,b i**** <++><Esc>F*hi
noremap  ,s i~~~~ <++><Esc>F~hi
noremap  ,i i** <++><Esc>F*i
noremap  ,d i`` <++><Esc>F`i
noremap  ,c i```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
noremap  ,m i- [ ] <Enter><++><ESC>kA
noremap  ,p i![](<++>) <++><Esc>F[a
noremap  ,a i[](<++>) <++><Esc>F[a
noremap  ,1 i#<Space><Enter><++><Esc>kA
noremap  ,2 i##<Space><Enter><++><Esc>kA
noremap  ,3 i###<Space><Enter><++><Esc>kA
noremap  ,4 i####<Space><Enter><++><Esc>kA
noremap  ,l i--------<Enter>







