let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
" 快捷键映射

" Tab键的宽度
set tabstop=2
"统一缩进为2
set softtabstop=4
set shiftwidth=4
" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')



" ==========================
" 安装vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"run :PluginInstall    :PluginList
"
" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'


" 以下范例用来支持不同格式的插件安装.
" 请将安装插的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
Plugin 'git://git.wincent.com/command-t.git'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" =================自定义插件========================
" scala 高亮插件
Plugin 'derekwyatt/vim-scala'

"vim目录树
 Bundle 'The-NERD-tree'
 Bundle 'The-NERD-Commenter'

"Tag列表
Bundle 'taglist.vim'

"中文文档
Plugin 'asins/vimcdoc'

"html,js,css
Plugin 'mattn/emmet-vim'

" 注释代码
Plugin 'scrooloose/nerdcommenter'
"使用：
"1、 \cc 注释当前行和选中行
"2、 \cn 没有发现和\cc有区别
"3、 \c<空格>
"如果被选区域有部分被注释，则对被选区域执行取消注释操作，其它情况执行反转注释操作
"4、 \cm 对被选区域用一对注释符进行注释，前面的注释对每一行都会添加注释
"5、 \ci 执行反转注释操作，选中区域注释部分取消注释，非注释部分添加注释
"6、 \cs 添加性感的注释，代码开头介绍部分通常使用该注释
"7、 \cy 添加注释，并复制被添加注释的部分
"8、 \c$ 注释当前光标到改行结尾的内容
"9、 \cA 跳转到该行结尾添加注释，并进入编辑模式
"10、\ca 转换注释的方式，比如： /**/和//
"11、\cl \cb 左对齐和左右对其，左右对其主要针对/**/
"12、\cu 取消注释

"java提示
"Plugin 'artur-shaik/vim-javacomplete2'

"Plugin 'Valloric/YouCompleteMe'

"小窗口插件
" Bundle 'fholgado/minibufexpl.vim'

" =================自定义插件========================
" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后

"颜色
"colorscheme peaksea "railscasts 256-jungle railscasts 256-jungle desert
"colorscheme desert

"字体
"set guifontwide=YaHei\ Consolas\ Hybrid\ 12 
set guifont=YaHei\ Consolas\ Hybrid\ 12 

"行号
set nu

" 显示下划线
set cursorline


"""""新建文件，设定文件类型
autocmd BufNewFile  *.cpp,*.[ch],*.sbt,*.sh,*.py,*.java,*.scala exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
  "如果文件类型为.sh文件 
  if &filetype == 'sh'
    call setline(1,"\#!/bin/bash")
    call append(line("."), "")
    call append(line(".")+1, "\#########################################################################") 
    call append(line(".")+2, "\# Function: " )
    call append(line(".")+3, "\# Author: DRUNK") 
    call append(line(".")+4, "\# mail: shuangfu.zhang@xiaoi.com") 
    call append(line(".")+5, "\# Created Time: ".strftime("%c")) 
    call append(line(".")+6, "\#########################################################################") 
    call append(line(".")+7, "")
  endif

  if &filetype == 'python'
    call setline(1,"\#!/usr/bin/python")
    call append(line("."), "\#encoding=utf-8")
    call append(line(".")+1, "")
    call append(line(".")+2, "\#########################################################################") 
    call append(line(".")+3, "\# Function: " )
    call append(line(".")+4, "\# Author: DRUNK") 
    call append(line(".")+5, "\# mail: shuangfu.zhang@xiaoi.com") 
    call append(line(".")+6, "\# Created Time: ".strftime("%c")) 
    call append(line(".")+7, "\#########################################################################")
    call append(line(".")+8, "")
    call append(line(".")+9, "import os,sys")
    call append(line(".")+10, "reload(sys)")
    call append(line(".")+11, "sys.setdefaultencoding('utf8')")
    call append(line(".")+12, "sys.path.append(r'/opt/xiaoi/xiaoi-packages')")
    call append(line(".")+13, "from utils import *")
    call append(line(".")+14, "from utils.pipelog import *")
    call append(line(".")+15, "")
    call append(line(".")+16, "")
    call append(line(".")+17, "def main():")
    call append(line(".")+18, "    getlog().info('OK')")
    call append(line(".")+19, "")
    call append(line(".")+20, "")
    call append(line(".")+21, "if __name__ == '__main__':")
    call append(line(".")+22, "    main()")
    call append(line(".")+23, "")
  endif

  if &filetype == 'java'
    call setline(1,"//coding=utf8")
    call append(line("."), "")
    call append(line(".")+1, "\/*************************************************************************") 
    call append(line(".")+2, " Function: " )
    call append(line(".")+3, " Author: DRUNK") 
    call append(line(".")+4, " mail: shuangfu.zhang@xiaoi.com") 
    call append(line(".")+5, " Created Time: ".strftime("%c")) 
    call append(line(".")+6, "***************************************************************************/") 
    call append(line(".")+7, "")
  endif

  if &filetype == 'c'
    call append(line(".")+6, "#include<stdio.h>")
    call append(line(".")+7, "")
  endif

  if &filetype == 'scala'
    call setline(1,"//coding=utf8")
    call append(line("."), "")
    call append(line(".")+1, "\/*************************************************************************") 
    call append(line(".")+2, " Function: " )
    call append(line(".")+3, " Author: DRUNK") 
    call append(line(".")+4, " mail: shuangfu.zhang@xiaoi.com") 
    call append(line(".")+5, " Created Time: ".strftime("%c")) 
    call append(line(".")+6, "***************************************************************************/") 
    call append(line(".")+7, "")
    call append(line(".")+8, "object Test {")
    call append(line(".")+9, "")
    call append(line(".")+10, "  def main(args: Array[String]) = {")
    call append(line(".")+11, "      println(\"ok\")")
    call append(line(".")+12, "")
    call append(line(".")+13, "  }")
    call append(line(".")+14, "")
    call append(line(".")+15, "}")
  endif

"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G
endfunc 

autocmd BufNewFile *.sbt 0r ~/.vim/template/build.sbt

" 设置NerdTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows = 0
let NERDTreeShowBookmarks=1  
" 去掉临时文件
set noswapfile

"taglist
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
"let Tlist_Auto_Open=1 "自动启动
"list_Auto_Open
"设置F4代开代码函数浏览器
"nnoremap <silent><F4> :TlistToggle<CR> 

" 设置删除数据，不存黏贴板
"nnoremap d "_d
"vnoremap d "_d


"set gcr=n-v-c:ver25-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor"

"选中当天的光标所在的单词并不改变光标位置{
map gd gd<C-o>
"}


"跳转到定义GoToDefinition
"跳转到声明GoToDeclaration
"以及两者的合体GoToDefinitionElseDeclaration
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'

"html,zencode,
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"复制黏贴，取消自动缩进等
" set pastetoggle=<F2>
":set paste,:set nopaste


"YouCompleteMe
let mapleader = ","  " 这个leader就映射为逗号“，”
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'   “配置默认的ycm_extra_conf.py
"按,jd 会跳转到定义
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_confirm_extra_conf=0    "打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_collect_identifiers_from_tag_files = 1 "使用ctags生成的tags文件

nmap    w=  :resize +3<CR>
nmap    w-  :resize -3<CR>
nmap    w,  :vertical resize -3<CR>
nmap    w.  :vertical resize +3<CR>
