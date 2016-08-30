######YouCompleteMe安装简单说明
---
[官方YouCompleteMe安装说明](https://github.com/Valloric/YouCompleteMe#full-installation-guide)

(1)检查VIM的版本和python的版本。要求 VIM > 7.3 && (Python >  2 || Python > 3)

(2)官方采用的插件管理器是Vundle, Vundle可以clone子模块内容; 但是我使用的是plug.vim插件管理器, 所以需要手动clone子模块内容，cd  xxx/YouCompleteMe/, 执行下面命令来校出YCM仓库。 

	git submodule update --init --recursive

(3)依赖的软件软件cmake。执行下方命令检查cmake是否安装

	cmake --version

若没有安装, 手动安装

	yum -y install cmake   (CentOS)
	apt-get install cmake  (Ubuntu)

(4)cd xxx/YouCompleteMe/目录下

	./install.py  -clang-completer

(5)在YouCompleteMe配置文件中设置属性,注意 .ycm_extra_conf.py很重要

	let g:ycm_global_ycm_extra_conf=g:vim_home.'/conf/pluginconf/.ycm_extra_conf.py'

(6) .ycm_extra_conf.py位置; 本人将此文件拷贝出来放在自己的项目中做了个性化修改。

	xxx/YouCompleteMe/third_party/ycmd/cpp/ycm
---
###截图
![YomCompleteMe效果截图](http://obp7hxe1q.bkt.clouddn.com/ycm.png)