========
Raspbian
========

Raspbian 是专门用于 ARM 卡片式计算机 Raspberry Pi® “树莓派”的操作系统。

Raspberry Pi® “树莓派”是 2012 年问世的 ARM 计算机，旨在为儿童和所有的计算机爱好者提供一套廉价的编程学习与硬件 DIY 平台。树莓派基于 ARM11，具有 1080P 高清视频解析能力，附带用于硬件开发的 GPIO 接口，使用Linux操作系统。售价仅 $25~$35。

Raspbian 系统是 Debian 7.0/wheezy 的定制版本。得益于 Debian从7.0/wheezy 开始引入的“带硬件浮点加速的ARM架构”(armhf)，Debian 7.0 在树莓派上的运行性能有了很大提升。Raspbian 默认使用 LXDE 桌面，内置 C 和 Python 编译器。

Raspbian 是树莓派的开发与维护机构 The Raspbeery Pi Foundation “树莓派基金会”，推荐用于树莓派的首选系统。

由于以下原因，Raspbian 需要单独组建软件仓库，而不能使用 Debian 的仓库：

- Debian下所有的软件包都需要用 armhf 重新编译。
- 树莓派有部分特有的软件包，例如 BCM2835 CPU 的 GPIO 底层操作库。
- 树莓派用户倾向于探索、尝试最新的软件。这与 Debian 软件源的策略完全不同。

系统架构与版本
=======================
架构：

- armhf

版本：

- wheezy
- jessie

注：Raspbian 系统由于从诞生开始就基于（为了armhf，也必须基于）当时还是 testing 版本的 7.0/wheezy，所以 Raspbian 不倾向于使用 stable/testing 表示版本。

使用说明
=======================
.. warning::
 以下说明以 Raspbian jessie 为基准，其他版本的用户请自行确认自己的发行版代号。

基本与 Debian 一致。使用管理员权限（经由sudo），编辑 /etc/apt/sources.list 文件。参考命令行为：::

 pi@raspberrypi ~ $ sudo nano /etc/apt/sources.list

删除原文件所有内容，用以下内容取代：::

 deb http://mirrors.geekpie.club/raspbian/raspbian/ jessie main non-free contrib
 deb-src http://mirrors.geekpie.club/raspbian/raspbian/ jessie main non-free contrib

注意：网址末尾的raspbian重复两次是必须的。因为Raspbian的仓库中除了APT软件源还包含其他代码。APT软件源不在仓库的根目录，而在raspbian/子目录下。

编辑镜像站后，请使用sudo apt-get update命令，更新软件源列表，同时检查您的编辑是否正确。

相关链接
===================
Raspbian 链接

- Raspbian主页: http://www.raspbian.org/
- 文档: http://www.raspbian.org/RaspbianDocumentation
- Bug Tracker: http://www.raspbian.org/RaspbianBugs
- 镜像列表: http://www.raspbian.org/RaspbianMirrors
- Debian首页: http://www.debian.org/

树莓派链接

- 树莓派基金会主页: http://www.raspberrypi.org/
- 树莓派基金会论坛Raspbian版块: http://raspberrypi.org/phpBB3/viewforum.php?f=66

本页面取自：https://mirrors.tuna.tsinghua.edu.cn/help/raspbian/
