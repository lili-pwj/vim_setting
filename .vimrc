                                        
"  _       _   _       _  __     ___                    
" | |     (_) | |     (_) \ \   / (_)_ __ ___  _ __ ___ 
" | |     | | | |     | |  \ \ / /| | '_ ` _ \| '__/ __|
" | |___  | | | |___  | |   \ V / | | | | | | | | | (__ 
" |_____| |_| |_____| |_|    \_/  |_|_| |_| |_|_|  \___|
"                                                       
set encoding=utf-8
filetype on 
filetype plugin on
filetype indent on
"let python_highlight_all=1
set number
set relativenumber
syntax on 
syntax enable
set tabstop=4
set softtabstop=4
"设置缩进为1个tab
set shiftwidth=4
set wildmenu
set laststatus=2
"高亮显示当前行列
set cursorline
set hlsearch
set ignorecase
set showmatch
noremap nh :nohl<CR>
set smartcase
"这里把空格键定义了 <leader>就是空格键
let mapleader=" "
map <LEADER>wq :wq<CR>
"保留5行代码可视
set scrolloff=5
set autoindent
set smartindent
set nocompatible
set showcmd
map <F12> :!python.exe %
map tx :r !figlet 
"noremap h i
"noremap i k
"noremap j h
"noremap k j
nmap U 5k
"noremap y :undo

noremap J 5j
map s <nop>
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
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
inoremap <C-x> <Esc>ea<C-x>s
"Compiler setting below
" Compile function
noremap r :MarkdownPreview<CR>
func! RunPython()
    exec "W"
    if &filetype == 'python'
        exec "!time python2.7 %"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
    endif
endfunc

call plug#begin('~/.vim/plugged')

"代码格式美化
" vim-airline
Plug 'vim-airline/vim-airline'

"you completeme
Plug 'Valloric/YouCompleteMe'

" vim配色方案
 Plug 'connorholyday/vim-snazzy'

 Plug 'vimwiki/vimwiki'


" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Pretty Dress
Plug 'theniceboy/eleline.vim'
Plug 'bling/vim-bufferline'
"Plug 'liuchengxu/space-vim-theme'
"Plug 'morhetz/gruvbox'
"Plug 'ayu-theme/ayu-vim'
"Plug 'rakr/vim-one'
"Plug 'mhartington/oceanic-next'
"Plug 'kristijanhusak/vim-hybrid-material'
Plug 'ajmwagar/vim-deus'

" Markdown
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'iamcco/markdown-preview.vim'
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'theniceboy/bullets.vim'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf.vim'
"Plug 'yuki-ycino/fzf-preview.vim'
"Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
"Plug 'junegunn/fzf'
Plug 'francoiscabrol/ranger.vim'
" Editor Enhancement
"Plug 'Raimondi/delimitMate'
Plug 'cohama/lexima.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter' " in <space>cn to comment a line
Plug 'AndrewRadev/switch.vim' " gs to switch
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp
Plug 'junegunn/vim-after-object' " da= to delete what's after =
Plug 'junegunn/vim-easy-align' " gaip= to align the = in paragraph,
Plug 'tpope/vim-capslock'	" Ctrl+L (insert) to toggle capslock
Plug 'easymotion/vim-easymotion'
Plug 'Konfekt/FastFold'
" git管理器
Plug 'tpope/vim-fugitive'

call plug#end()


" vim scheme 
 colorscheme snazzy

 " ===
" === MarkdownPreview
" ===
 let g:mkdp_path_to_chrome="google-chrome-stable"
let g:mkdp_auto_close=0
nmap <F7> <Plug>MarkdownPreview
nmap <F8> <Plug>StopMarkdownPreview
source ~/.vim/markdown_key.vim
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
