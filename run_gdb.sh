cd ./pwmdbg/
./setup.sh
cd ..

echo "source ~/pwndbg/gdbinit.py" > ~/.gdbinit_pwndbg
cp ./gef.py ~/.gdbinit-gef.py
cat ./tmp-gdb > ~/.gdbinit

touch /usr/bin/gdb-peda
touch /usr/bin/gdb-gef
touch /usr/bin/gdb-pwndbg

echo '''#!/bin/sh''' > /usr/bin/gdb-peda
echo '''exec gdb -q -ex init-peda "$@"''' >> /usr/bin/gdb-peda

echo '''#!/bin/sh''' > /usr/bin/gdb-gef
echo '''exec gdb -q -ex init-gef "$@"''' >> /usr/bin/gdb-gef

echo '''#!/bin/sh''' > /usr/bin/gdb-pwndbg
echo '''exec gdb -q -ex init-pwndbg "$@"''' >> /usr/bin/gdb-pwndbg

chmod +x /usr/bin/gdb-*
