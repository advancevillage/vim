#!/bin/bash
#root permission needed

#install vim
if test -e /usr/bin/vim || test -e /usr/local/bin/vim || test -e /bin/vim
then
	echo 'vim has existed'
else
	echo 'vim not existed and will install vim!'
	apt-get install -y vim
fi

#install git
if test -e  /usr/bin/git || test -e /usr/local/bin/git || test -e /bin/git
then
	echo 'git has existed'
else 
	echo 'git not existed and will install git'
	apt-get install -y git
fi

#install gcc
if test -e /usr/bin/gcc || test -e /usr/local/bin/gcc || test -e /bin/gcc
then
	echo 'gcc has existed'
else
	echo 'git not existed and will install gcc*'
	apt-get install -y gcc*
fi

#install cmake
if test -e /usr/bin/cmake || test -e /usr/local/bin/cmake || test -e /bin/cmake
then 
	echo 'cmake has existed'
else
	echo 'cmake not existed and will install cmake'
	apt-get install -y cmake
fi

apt-get install -y python-dev

GitPath=`/usr/bin/which git`
if test -d ~/.vim
then
    FileCount=`ls ~/.vim/ | wc -l`
    if [ ${FileCount} -eq 0 ]
    then
        git clone https://github.com/advancevillage/vim.git ~/.vim
    fi
else 
    git clone https://github.com/advancevillage/vim.git ~/.vim
fi

#if you run install.py --all, you need install xbuild
#apt-get install -y mono-xbuild
