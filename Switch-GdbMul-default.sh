#!/bin/sh
path='/usr/bin/'
str="gdb-multiarch"
gdbmul='gdb-mul'
result=$(ls $path | grep "${str}")

if [ "$result" != "" ];then
		echo "#!/bin/sh" > $path$gdbmul
		echo "exec gdb-multiarch -q -ex default-gdb-"$1' "$@"' >> $path$gdbmul
		chmod +x $path$gdbmul
		echo "success change default gdb-multiarch to $1!"
else
    		echo "Please install gdb-multiarch first, run apt install gdb-multiarch !"
    		exit
fi

