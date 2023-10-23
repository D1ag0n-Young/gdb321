This is a script that combines pwndbg peda pwngef in one

Make sure that the local gdb has been installed before using it!



# Dependence

Because pwndbg needs some dependencies: such as pyelftools, etc., it is best to install pwntools before installation. The command is as follows: 

```
pip install pwntools -i https://pypi.tuna.tsinghua.edu.cn/simple
```

# Install

```
git clone https://github.com/D1ag0n-Young/gdb321.git  --recurse-submodules
cd ./gdb321/
./run_gdb.sh install
```

If you want to remove it, please use the remove parameter as follows:

```
./run_gdb.sh remove
```

# Usage

```
gdb-peda #uses peda plug-in

gdb-pwndbg #uses pwndbg plug-in

gdb-gef #uses gef plug-in
```

## Switch Default GDB

you can choose `gef/pwndbg/peda` as the parameter.<br>

### example

Change default gdb plug-in to pwndbg:

```
sudo ./Switchdefault.sh pwndbg
```

## Switch Default GDB Multiarch

you can choose `gef/pwndbg/peda` as the parameter.

### example

Change default gdb-multiarch plug-in to gef:

```
sudo ./Switch-GdbMul-default.sh gef
```

use it happy!

## Tips

if you want to install it by root please run 

```
sudo ./run_gdb.sh 
```

If your network is not good, please use the run_gdb_local script to run and install it in the same way

If you encounter encoding problems, please check whether the default encoding is set to en_US.UTF-8 in the locale
