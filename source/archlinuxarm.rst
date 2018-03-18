========================
Arch Linux ARM
========================

地址
==========

https://mirrors.geekpie.club/archlinuxarm/

说明
========

Arch Linux ARM 软件源（非官方）

Arch Linux ARM 是一个针对 ARM 电脑（如树莓派）的 Linux 发行版，详情可见其官网：https://archlinuxarm.org/

使用方式
================

在 :file:`/etc/pacman.conf` 文件末尾添加两行：

::

    [archlinuxarm]
    Server = https://mirrors.geekpie.club/archlinuxarm/$arch

然后请安装 ``archlinuxcn-keyring`` 包以导入 GPG key。

相关链接
===================

:主页: https://www.archlinuxarm.org
:镜像加速源介绍: https://www.archlinuxarm.org/about/mirrors/
