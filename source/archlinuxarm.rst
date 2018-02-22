========================
Arch Linux CN
========================

地址
==========

https://mirrors.geekpie.org/archlinuxarm/

说明
========

Arch Linux ARM 软件源（非官方）

Arch Linux ARM 是一个针对 ARM 电脑（如树莓派）的 Linux 发行版，详情可见其官网：https://archlinuxarm.org/

使用方式
================

在 :file:`/etc/pacman.conf` 文件末尾添加两行：

::

    [archlinuxarm]
    Server = https://mirrors.geekpie.org/archlinuxarm/$arch

然后请安装 ``archlinuxcn-keyring`` 包以导入 GPG key。

相关链接
===================

:官网：https://archlinuxarm.org/
:官方镜像列表：https://archlinuxarm.org/about/mirrors