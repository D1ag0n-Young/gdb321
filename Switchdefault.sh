#!/bin/sh
gdbpath2="/usr/bin/gdb"
gdbpath1= "/usr/local/bin/gdb"
str="gdb-source"
if [ -f "$gdbpath1" ];then
	result=$(cat $gdbpath1 | grep "${str}")
	if [ "$result" != "" ];then
		echo "#!/bin/sh" > $gdbpath1
		echo "exec gdb-source -q -ex default-gdb-"$1' "$@"' >> $gdbpath1
		echo "success change default gdb to $1!"
	else
    		echo "Please initialize gdb first, run run_gdb or run_gdb_local!"
    		exit
	fi
elif [ -f "$gdbpath2" ];then
	result=$(cat $gdbpath2 | grep "${str}")
	if [ "$result" != "" ];then
		echo "#!/bin/sh" > $gdbpath2
		echo "exec gdb-source -q -ex default-gdb-"$1' "$@"' >> $gdbpath2
		echo "success change default gdb to $1!"
	else
    		echo "Please initialize gdb first, run run_gdb or run_gdb_local!"
    		exit
	fi
fi
