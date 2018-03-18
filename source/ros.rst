========================
Robtics Opreating System
========================

地址
======

https://mirrors.geekpie.club/ros/

使用方法
=============

针对 Ubuntu 用户，我们提供预编译的软件仓库镜像供下载，使用预编译版本有助于提高效率。

要使用此仓库，你需要进行如下操作：

在终端中运行::

  sudo sh -c 'echo "deb http://mirrors.geekpie.club/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

配置你的电脑以接受来自 GeekPie ROS 镜像的软件。

在终端中运行::

  sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

以设置你电脑用于校验软件包的 PGP key。

此后，你就可以使用 apt 惯常的软件安装方式来安装 ros 了。

如果你要安装完整的桌面版本的 ROS，请运行如下两条指令：::

  sudo apt-get update
  sudo apt-get install ros-kinetic-desktop-full

此后更多配置过程和安装选择请参见 ROS 的官方手册：http://wiki.ros.org/kinetic/Installation/Ubuntu
