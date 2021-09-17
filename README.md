This is a script that combines pwndbg peda pwngef in one

Make sure that the local gdb has been installed before using it!<br>
Because pwndbg needs some dependencies: such as pyelftools, etc., it is best to install pwntools before installation. The command is as follows: pip install pwntools -i https://pypi.tuna.tsinghua.edu.cn/simple

**use it：**
1. git clone https://github.com/1094093288/gdb321.git
2. cd ./gdb321/
3. ./run_gdb.sh install

If you want to remove it, please use the remove parameter as follows:<br>
`./run_gdb.sh remove`

After installation

1. `gdb-peda` uses peda plug-in
2. `gdb-pwndbg` uses pwndbg plug-in
2. `gdb-gef` uses gef plug-in

**SwitchDefaultGDB**
Change default gdb plug-in to pwndbg:

`sudo ./Switchdefault.sh pwndbg`

use it happy!

**note**: 
1. if you want to install it by root please run 'sudo ./run_gdb.sh '
2. If your network is not good, please use the run_gdb_local script to run and install it in the same way
