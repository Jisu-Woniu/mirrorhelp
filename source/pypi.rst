===========================
PyPI
===========================

地址
====

https://mirrors.geekpie.club/pypi/

说明
====

PyPI(pip) 软件源.


使用说明
========

编辑 ~/.pip/pip.conf 文件（如果没有则创建之），将 index-url 开头的一行修改为下面一行：

::

    index-url = https://mirrors.geekpie.club/pypi/web/simple

如果运行 pip 时, 提示如下错误:

::

    configparser.MissingSectionHeaderError: File contains no section headers.

请在`~/.pip/pip.conf`最上方加上`[global]`这一 section header

如：

::

    [global]
    index-url = https://mirrors.geekpie.club/pypi/web/simple
    format = columns

``pip`` 的配置文件一般位于（如果没有，请直接创建）：

* Unix 环境: :file:`$HOME/.config/pip/pip.conf`
* macOS: :file:`$HOME/Library/Application Support/pip/pip.conf`
* Windows: :file:`%APPDATA%\\pip\\pip.ini` （:file:`%APPDATA%` 通常是 :file:`C:\\Users\\YOUR_USERNAME\\AppData\\Roaming\\`）

全局或者 ``virtualenv`` 等的 ``pip`` 配置文件位置，请参考 https://pip.pypa.io/en/stable/user_guide/#configuration

同步方式
========

使用 bandersnatch，每20分钟从 pypi.python.org 官方同步。



相关链接
========
:PyPI Official Mirrors: https://pypi.python.org/mirrors
:PEP-381 Mirroring Protocol: http://www.python.org/dev/peps/pep-0381/
:bandersnatch: https://pypi.python.org/pypi/bandersnatch
