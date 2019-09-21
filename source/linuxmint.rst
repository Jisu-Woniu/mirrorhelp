========================
Linux Mint
========================

地址
====

https://mirrors.geekpie.club/linuxmint/

说明
====

Linux Mint 软件源

收录架构
========

i386，amd64

收录版本
========

* 所有 Linux Mint 发行版本
* 所有 LMDE 发行版本

使用方法
========

.. warning::
	操作前请做好相应备份。

编辑 :file:`/etc/apt/sources.list.d/official-lackage-repositories.list` ：

* 对于基于 Ubuntu 的原版，以 Linuxmint 19 为例：

::

	deb https://mirrors.geekpie.club/linuxmint/ tara main upstream import backport
	deb https://mirrors.geekpie.club/ubuntu/ bionic main restricted universe multiverse
	deb https://mirrors.geekpie.club/ubuntu/ bionic-updates main restricted universe multiverse
	deb https://mirrors.geekpie.club/ubuntu/ bionic-backports main restricted universe multiverse
	deb https://mirrors.geekpie.club/ubuntu/ bionic-security main restricted universe multiverse
	deb http://archive.canonical.com/ubuntu/ bionic partner

* 对于基于 Debian 的 LMDE，以 LMDE 2 为例：

::

	deb https://mirrors.geekpie.club/linuxmint/ betsy main upstream import
	deb https://mirrors.geekpie.club/debian jessie main contrib non-free
	deb https://mirrors.geekpie.club/debian jessie-updates main contrib non-free
	deb https://mirrors.geekpie.club/debian jessie-backports main contrib non-free
	deb https://mirrors.geekpie.club/debian-security/ jessie/updates main non-free contrib
	deb https://mirrors.geekpie.club/deb-multimedia/ jessie main non-free


然后运行 ``sudo apt-get update`` 更新索引以生效。

.. tip::
	完成后请不要再使用 mintsources（自带的图形化软件源设置工具）进行任何操作，因为在操作后，无论是否有按“确定”，mintsources 均会复写 :file:`/etc/apt/sources.list.d/official-lackage-repositories.list` 。

相关链接
========

:官方主页: https://www.linuxmint.com/
:论坛: https://forums.linuxmint.com/index.php
:文档: https://linuxmint.com/documentation.php
