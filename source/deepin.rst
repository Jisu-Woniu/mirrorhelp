==========
deepin
==========

地址
================

https://mirrors.geekpie.club/deepin

使用帮助
==================

我们提供 deepin 的官方软件包仓库镜像供下载。

对版本 15 的用户，要使用该镜像，请使用 root 权限运行你喜欢的文本编辑器打开
::

 /etc/apt/sources.list

例如，你可以使用gedit
::

 sudo gedit  /etc/apt/sources.list

然后将其中的
::

 deb [by-hash=force] http://packages.deepin.com/deepin stable main contrib non-free
 #deb-src http://packages.deepin.com/deepinstable main contrib non-free

两行更改为：
::

 deb [by-hash=force] http://mirrors.geekpie.club/deepin stable main contrib non-free
 #deb-src http://mirrors.geekpie.club/deepin stable main contrib non-free

即可。

更多信息见deepin的官方文档：https://wiki.deepin.org/index.php?title=%E8%BD%AF%E4%BB%B6%E6%BA%90
