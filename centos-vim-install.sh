#!/bin/bash

#安装vim
if  test -e /usr/bin/vim ||  test -e /usr/local/bin/vim || test -e /bin/vim 
then
	echo 'vim has existed'
else
	echo 'vim not existed and will install vim!'
	yum install vim -y
fi

#安装git
if test -e /usr/bin/git || test -e /usr/local/bin/git || test -e /bin/git
then 
	echo 'git has existed!'
else 
	echo 'git not existed and will install git'
	yum install git -y
fi

#由于配置vim中需要cmake,安装cmake
if test -e /usr/bin/cmake || test -e /usr/local/bin/cmake || test -e /bin/cmake
then 
	echo 'git has existed'
else
	echo 'git not existed and will install cmake'
	yum install cmake -y
fi

#安装gcc
if test -e /usr/bin/gcc || test -e /usr/local/bin/gcc || test -e /bin/gcc
then 
    echo 'gcc has existed'
else
    echo 'gcc not existed and will install gcc'
    yum install gcc* -y
fi

#安装python文件信息
yum install -y python-devel.x86_64

GitPath=`/usr/bin/which git`
#将vim配置文件从github克隆到当前用户目下
#将会在当前用户目录目录下出现一个vim文件
if  test -d ~/.vim
then
    FileCount=`ls ~/.vim/ | wc -l`
    if [ ${FileCount} -eq 0 ]
    then
        git clone https://github.com/advancevillage/vim.git ~/.vim
    fi
else
    git clone https://github.com/advancevillage/vim.git ~/.vim
fi

#将.vim/vimrc移动到/etc
if test -f ~/.vim/vimrc 
then
    mv ~/.vim/vimrc /etc/
fi

