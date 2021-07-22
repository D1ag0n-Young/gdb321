echo '-----------------------------------------pull peda--------------------------------------------------'
git clone https://github.com/longld/peda.git ./peda
echo '-----------------------------------------pull gef--------------------------------------------------'
wget -q -O ~/.gdbinit-gef.py https://github.com/hugsy/gef/raw/master/gef.py
echo '-----------------------------------------pull pwndbg--------------------------------------------------'
git clone https://github.com/pwndbg/pwndbg
echo '-----------------------------------------pull Pwngdb--------------------------------------------------'
git clone https://github.com/scwuaptx/Pwngdb.git

chmod -R 777 ./*
cd ./pwndbg/
./setup.sh
cd ..

echo "source ~/pwndbg/gdbinit.py" > ~/.gdbinit_pwndbg
cat ./tmp-gdb > ~/.gdbinit

sudo cp gdb-peda /usr/bin/
sudo cp gdb-gef /usr/bin/
sudo cp gdb-pwndbg /usr/bin/

sudo chmod +x /usr/bin/gdb-*
echo 'install success!'
