set cursorline
set nu
set autoindent
set hlsearch

highlight Search  term=standout ctermfg=0 ctermbg=3 
set listchars=tab:>-,trail:-
set nocscopeverbose

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Sort_Type="name"

"iabbrev tl Tlist
map <silent> <F8> :TlistToggle<cr> 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

set path+=/home/liyang/enjor/linux-master/include/


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERTree setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"安装NERTree的时候需要这个
call pathogen#infect()

" Ctrl+N 打开/关闭
"map <C-n> :NERDTreeToggle<CR>
map <silent> <F9> :NERDTreeToggle<cr>
" 当不带参数打开Vim时自动加载项目树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 当所有文件关闭时关闭项目树窗格
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
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
autocmd vimenter * NERDTree
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
autocmd VimEnter * NERDTree
wincmd w
autocmd VimEnter * wincmd w
