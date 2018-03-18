==================
AOSC OS
==================

地址
=========

https://mirrors.geekpie.club/anthon

说明
============

AOSC OS（安同 OS）软件源

收录架构
================

AOSC OS 支持的所有架构，包括：

* AMD64（x86_64）
* ARM

  * ARMv7（armel）
  * ARMv8（arm64, aarch64）

* MIPS

  * mipsel
  * mips64el

* PowerPC

  * powerpc（ppc32）
  * ppc64

使用说明
========

您可以直接编辑 :file:`/etc/apt/sources.list` 文件。对于任一架构 ``${ARCH}``，需要在 :file:`/etc/apt/sources.list` 中同时写入：

::

  deb https://mirrors.geekpie.club/anthon/os-${ARCH}/os3-dpkg/ /
  deb https://mirrors.geekpie.club/anthon/os-noarch/os3-dpkg/ /

其中 ``${ARCH}`` 可以是：

* ``amd64`` （x86_64）
* ``armel`` （ARMv7）
* ``arm64`` （ARMv8）
* ``mipsel``
* ``mips64el``
* ``powerpc``
* ``ppc64``

执行完上面任一步骤后，请运行 ``sudo apt-get update`` 更新索引以生效。

相关链接
========

:官方主页: https://aosc.io
:文档: https://github.com/AOSC-Dev/aosc-os/wiki
:镜像列表: https://aosc.io/about
