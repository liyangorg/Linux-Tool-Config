set nu
set laststatus=2  "show status pane
set statusline+=%F  "show full file name
set hlsearch		"search highlight
set encoding=utf-8
set nowrap
"映射黑洞删除快捷键为d.
nnoremap <leader>d "_d
" 避免和ycm的报错冲突，造成报错行看不清
set t_Co=256 " required
"colorscheme desert
colorscheme molokai

let mapleader=","	"注释插件的leader

let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
" let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'

" let g:airline_theme='simple'
" let g:airline#extensions#tabline#enabled = 1
set t_Co=256

""""""""""""""""""""""""""""""""""""Tlist & ctags & cscope start""""""""""""""""""""""""""""""""""""""""
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_Sort_Type="name"
"let Tlist_WinWidth=30
"
""iabbrev tl Tlist
map <silent> <F8> :TlistToggle<cr>

set autochdir
set tags=tags;
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
	set cst
	set nocsverb
" add any database in current directory
"if filereadable("cscope.out")
"cs add cscope.out
"endif
set csverb
endif

"nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>

"nmap <leader>vs :vert scs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>ss :scs find s <C-R>=expand("<cword>")<CR><CR>

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>u :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"nmap <leader>,s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>,g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>,c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>,t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>,e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>,f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>,i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>,d :cs find d <C-R>=expand("<cword>")<CR><CR>

"nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>si :cs find i <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>

"nmap <leader>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>i :vert scs find i <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

nmap <leader>,s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>,g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>,u :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>,t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>,e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>,f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>,i :vert scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>,d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

"nmap <leader>vs :vert scs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>vg :vert scs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>vc :vert scs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>vt :vert scs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>ve :vert scs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>vf :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>vi :vert scs find i <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>vd :vert scs find d <C-R>=expand("<cword>")<CR><CR>

"nmap <leader>ss :scs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>sg :scs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>sc :scs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>st :scs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>se :scs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>sf :scs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>si :scs find i <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>sd :scs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""""""""""Tlist end""""""""""""""""""""""""""""""""""""""""

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %


"""""""""""""""""""""""""""""""""""" start""""""""""""""""""""""""""""""""""""""""

setlocal cindent
setlocal cinoptions=:0,l1,t0,t0,(0
set autoindent

set noexpandtab
set tabstop=8
set softtabstop=8
set shiftwidth=8
set ts=8

set listchars=tab:>-,trail:-,extends:#,nbsp:-
set list

"""""""""""""""""""""""""""""""""""" end""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERTree setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"安装NERTree的时候需要这个
execute pathogen#infect()
"call pathogen#infect()

" Ctrl+N 打开/关闭
"map <C-n> :NERDTreeToggle<CR>
map <silent> <F9> :NERDTreeToggle<cr>
" 当不带参数打开Vim时自动加载项目树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 当所有文件关闭时关闭项目树窗格
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 不显示这些文件
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules', '\.out$', '\.swp$'] "ignore files in NERDTree
" 不显示项目树上额外的信息，例如帮助、提示什么的
let NERDTreeMinimalUI=1
let g:NERDTreeWinPos="right"
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"只剩右边的nerdtree窗口，就关闭vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"打开vim，自动打开tree
"autocmd vimenter * NERDTree
"打开一个目录时候，自动加载tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=30
" 解决:开启vim后，光标停留在tree中
"autocmd VimEnter * NERDTree " 打开vim后，自动开启NERDTree窗口
wincmd w
autocmd VimEnter * wincmd w

""""""""""""""""""""""""""""""""""""Vundle start""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/A.vim'
Plugin 'vim-rooter'
Plugin 'vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""Vundle end""""""""""""""""""""""""""""""""""""""""


map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
	exec "w"
	if &filetype == 'sh'
		:!bash %
	endif
endfunc

if filereadable("/home/liyang/br-dev/hm-verif-kernel/.workspace.vim")
    source /home/liyang/br-dev/hm-verif-kernel/.workspace.vim
endif

""""""""""""""""""""""""""""""""""""""""""""""自动加载目录下的vimrc配置""""""""""""""""""""""""""""""""""""""""""""""""""""""

auto bufread /home/liyang/xxx/* so /home/liyang/xxx/.vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

