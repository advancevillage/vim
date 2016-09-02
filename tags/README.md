
说明
---
生成cpp和opencv的标签文件, 可以发挥YouCompleteMe更好的性能。
步骤
---
(1)安装ctags 

	yum -y  install ctags

(2)生成标签文件

	cd /usr/include/c++
	ctags -R --c++-kinds=+p --fields=+iaS --extra=+q 
	
	cd /opt/release/include/
	ctags -R --c++-kinds=+p --fields=+iaS --extra=+q 

(3)配置VIM配置文件.vimrc

	set tags+=g:vim_home/tags/cpptags
	set tags+=g:vim_home/tags/opencvtags

​	