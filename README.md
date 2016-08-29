######配置自己风格的VIM
---
######目录结构
	vim 
	 |------autoload (插件管理器plug.vim)
	 |		 	|------plug.vim
	 |
	 |------plugged  (插件目录)
	 |
	 |------conf (配置vim的脚本文件夹)
	 |			|
	 |			|------basic.vim	(vim基本配置)
	 |			|
	 |			|------keymap.vim	(vim按键映射)
	 |			|
	 |			|------pluginmanager.vim  (加载插件和插件的配置文件)
	 |			|
	 |			|------plugin (插件的配置目录)
	 |
	 |------doc	(参考资料)


######VIM补充知识

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

######应用的插件(插件链接在doc/README.md)

	外观类:
	(1)主题背景:  molokai
	(2)目录树形结构:  nerdtree
	(3)状态标签栏:  vim-airline
	(2)自动补全:  auto-pairs

