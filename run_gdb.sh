#/bin/sh
gdbpath2="/usr/bin/gdb"
gdbpath1= "/usr/local/bin/gdb"
gdbdirpath2="/usr/bin"
gdbdirpath1= "/usr/local/bin"

echo '-----------------------------------------pull peda--------------------------------------------------'
git clone https://github.com/longld/peda.git ~/peda
echo '-----------------------------------------pull gef--------------------------------------------------'
wget -q -O ~/.gdbinit-gef.py https://github.com/hugsy/gef/raw/master/gef.py
echo '-----------------------------------------pull pwndbg--------------------------------------------------'
git clone https://github.com/pwndbg/pwndbg ~/pwndbg
echo '-----------------------------------------pull Pwngdb--------------------------------------------------'
git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb

chmod -R 777 ./*
filepath=$(cd "$(dirname "$0")"; pwd)
cd ~/pwndbg/
./setup.sh
cd $filepath

echo "source ~/pwndbg/gdbinit.py" > ~/.gdbinit_pwndbg
cat ./tmp-gdb > ~/.gdbinit
if [ -f "$gdbpath1" ];then
    echo "the gdb path $gdbpath1" 
    sudo cp gdb-peda $gdbdirpath1
    sudo cp gdb-gef $gdbdirpath1
    sudo cp gdb-pwndbg $gdbdirpath1
    mv $gdbpath1 $gdbdirpath1/gdb-source
    cp gdb $gdbdirpath1
    sudo chmod +x $gdbpath1
    sudo chmod +x $gdbdirpath1/gdb-*
elif [ -f "$gdbpath2" ];then
    echo "the gdb path $gdbpath2" 
    sudo cp gdb-peda $gdbdirpath2
    sudo cp gdb-gef $gdbdirpath2
    sudo cp gdb-pwndbg $gdbdirpath2
    mv $gdbpath2 $gdbdirpath2/gdb-source
    cp gdb $gdbdirpath2
    sudo chmod +x $gdbpath2
    sudo chmod +x $gdbdirpath2/gdb-*
else 
    echo "the gdb not found,please install it!"
    exit
fi
echo 'install success!'
