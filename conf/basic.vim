"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-->常规设置
"-->编码设置，显示设置，兼容性设置，文件设置，编辑设置,窗口设置，搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"-->编码设置:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"encoding: vim内部使用的编码格式，会影响vim内部的buffer,消息文字
"
"fileencodeings: vim在打开文件时会根据fileencodings选项来识别文件编码
"                fileencodings可以同时设置多个编码，Vim会根据设置的顺
"                序来猜测所打开文件的编码。 
"
"termencodings:  在终端的环境下使用vim时，通过termencodeings告诉vim终端
"                使用的编码

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gbk,gck2312,gb18030

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-->显示设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"显示行号
set number
"显示标尺
set ruler
"鼠标可以任意位置
set mouse=a
"去掉讨厌的关于vi一致性模式，避免一些Bug和局限
set nocompatible
"取消闪烁
set novisualbell
"命令行的高度，默认值是1,设置2
set cmdheight=2
"增强模式中的命令自动完成的操作
set wildmenu
"是回退键(backspace),正常处理indent,eol,start
"indent 允许在自动缩进上退格
"eol    允许在换行符上退格 (连接行)
"start  允许在插入开始的位置上退格；
set backspace=indent,eol,start
"语法高亮
set syntax=on
"256色
set t_Co=256
"语法可用
set syntax=enable
"去掉启动时的援助提示
set shortmess=atI
"当前行
set cul
set cuc
"去掉图形按钮
set go=
"设置背景颜色
set background=dark
"显示模式
set showmode
"help文档设置为中文
if version >= 603
	set helplang=cn
endif
"显示正则表达式
set magic
"记录历史的行数
set history=500
"显示状态栏
"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P> 
"通过使用commands命令告诉我们的文件的那一行被改变过
set report=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"--->文件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"侦测文件类型
filetype on
"载入文件类型
filetype plugin on
"在处理为保存或只读文件的时候弹出确认
set confirm
"与windows共享剪贴板
set clipboard=unnamed
"为特定的文件类型载入相关的缩进文件
filetype indent on
"保存全局变量
set viminfo+=!
"当你改写文件时备份文件
set nobackup
"不要生成swap文件
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动缩进
set smartindent
"设置tab键
set tabstop=4
"统一缩进为4
set softtabstop=4
set shiftwidth=4
"用空格代替制表符
set expandtab
"带有如下符号的单词不要被换行分割
set iskeyword+=_,@,$,%,#,-
"允许backspace和光标跨越行边界
set whichwrap+=<,>,h,l
"不让vim发出滴滴声
"set noerrorbells
"自动格式化
set formatoptions=tcrqn
"继承上一行的缩进格式，特别适合多行注释
set autoindent
"不要换行
set nowrap
"允许backspace和光标跨越行边界
set whichwrap=b,s,<,>,[,]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-->搜索设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"括号高亮匹配
set showmatch
"设置匹配括号高亮的时间
set matchtime=1
"在搜索是忽略大小写
"set ignorecase
"在搜索时输入的词句的逐字符高亮
set incsearch 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setting tags
set tags+=g:vim_home/tags/cpptags
set tags+=g:vim_home/tags/opencvtags
set tags+=g:vim_home/tags/systags
