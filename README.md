配置自己风格的VIM


目录结构

	vim 
	 |------autoload (插件管理器plug.vim)
	 |		 	|------plug.vim
	 |
	 |------plugged  (插件目录)
	 |
	 |------after(此目录是插件vim-cpp-enhanced-highlight需要而创建的)
	 |		  	|------syntax
	 |			 			|------cpp.vim
	 |						|------c.vim
	 |
	 |------conf (配置vim的脚本文件夹)
	 |			|
	 |			|------basic.vim	(vim基本配置)
	 |			|
	 |			|------keymap.vim	(vim按键映射)
	 |			|
	 |			|------pluginmanager.vim  (加载插件和插件的配置文件)
	 |			|
	 |			|------pluginconf (插件的配置目录)
	 |
	 |------doc	(参考资料)
	 |			|------README.md
	 |
	 |------tags(标签文件目录)
	 |			|------cpptags
	 |			|
	 |			|------opencvtags


VIM补充知识

(1)当vim启动时，vim会自动的加载配置文件vimrc,读取并执行该内容。注意加载路		径/etc/vimrc(所有用户共用), $HOME/.vimrc(当前用户), ~/.vim/vimrc(当前用户)

	命令:   vim  --version


(2)vim变量: 

	g(全局变量,可以在当前脚本和其他外部脚本中引用), 
	s(局部变量,仅在当前脚本中起效)


(3)可在vimrc脚本中加载其他vim脚本

	格式: execute  ':so'  path/xxx.vim
	eg:
	let g:vim_home=expand('~/.vim')
	execute ':so' g:vim_home."/conf/basic.vim"


[应用的插件(插件链接在doc/README.md)](https://github.com/advancevillage/vim/tree/master/doc)

	外观类:
	(1)主题背景:  molokai
	(2)目录树形结构:  nerdtree
	(3)状态标签栏:  vim-airline
	代码类设置
	(4)自动补全:  auto-pairs
	(5)代码折叠:  indentLine
	(6)代码自动补全: YouCompleteMe
	(7)关键字高亮显示: vim-cpp-enhanced-highlight
	(8)语法错误: syntastic

加载过程

设置一个全局变量,VIM自动加载vimrc文件,所以从vimrc设置使它自动加载其他vim脚本
定义一个全局变量,使VIM从当前目录下.vim加载配置文件

	let g:vim_home = expand('~/.vim')

设置加载的VIM脚本, . 表示字符串连接符, 先加载VIM基本配置脚本,basic.vim中定义
常规设置,例如显示行号, 编码设置,鼠标任意点击等

	execute ':so' g:vim_home."/conf/basic.vim"

加载快键键重映射,根据自己的习惯定义

	execute ':so' g:vim_home."/conf/keymap.vim"
加载插件

第一步先将插件地址写入g:vim_home."/conf/pluginmanager.vim"中注意这里使用的是plug.vim插件管理器

第二步编辑插件的配置文件并放在g:vim_home."/conf/pluginconf/xxx.vim"(xxx表示插件的名称);

第三步在pluginmanager.vim脚本中的g:plugins数组中添加xxx;第四步生效vimrc脚本

	execute ':so' g:vim_home."/conf/pluginmanager.vim"
---

效果
![个性化配置VIM效果动图](http://obp7hxe1q.bkt.clouddn.com/vimconf.gif)

---

安装

    (1)执行centos-vim-install.sh脚本，安装配置环境(只适合centos)

    (2)随便用vim打开一个文件，在vim环境中执行命令:PlugInstall

    (3)进入plugged/YouCompleteMe目录中

        git submodule update --init --recursive

    (4)执行python脚本

        sudo apt-get install -y python-dev

        ./install.py --clang-completer



---

LICIENCE

    CUG@2016 SUN-HE
