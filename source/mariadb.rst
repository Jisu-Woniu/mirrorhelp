========================================
MariaDB 源使用帮助
========================================

地址
==============================

https://mirrors.geekpie.org/mariadb/

收录架构
==============================

官方支持的所有架构

收录版本
==============================

官方支持的所有版本

使用说明
==============================

Fedora, CentOS, Red Hat
------------------------------

使用 `MariaDB Repository Configuration Tool <https://downloads.mariadb.org/mariadb/repositories>`_ 生成一份配置，保存为 ``/etc/yum.repos.d/mariadb.repo``

然后执行以下命令替换源地址：

::

  sudo sed -i 's#yum\.mariadb\.org#mirrors.geekpie.org/mariadb/yum#' /etc/yum.repos.d/mariadb
  # 建议使用 HTTPS
  sudo sed -i 's#http://mirrors\.ustc\.edu\.cn#https://mirrors.geekpie.org#g' /etc/yum.repos.d/mariadb

若安装时遇到错误 “Failed to connect to 2001:da8:d800:95::110: Network is unreachable”，将源地址中的 ``mirrors.geekpie.org`` 替换为 ``ipv4.mirrors.geekpie.org`` 以强制使用 IPv4：

::

  sudo sed -i 's#//mirrors.geekpie.org#//ipv4.mirrors.geekpie.org#g' /etc/yum.repos.d/mariadb

Mint, Ubuntu, Debian
------------------------------

1. 使用 `MariaDB Repository Configuration Tool <https://downloads.mariadb.org/mariadb/repositories>`_ 生成要执行的命令（Mirror 选择 Babylon Network - NL）
2. 将 ``add-apt-repository`` 命令中的 "http://nl.mirror.babylon.network" 替换为 "https://mirrors.geekpie.org"
3. 执行命令

相关链接
==============================

:MariaDB 官网: https://mariadb.org/
:MariaDB Repository Configuration Tool: https://downloads.mariadb.org/mariadb/repositories
