#/bin/sh
gdbpath2="/usr/bin/gdb"
gdbpath1= "/usr/local/bin/gdb"
gdbdirpath2="/usr/bin"
gdbdirpath1= "/usr/local/bin"
if [ "$1" = "install" ];then
	echo '----------------------copy peda------------------------'
	cp peda ~/peda -r
	echo '----------------------copy gef-------------------------'
	cp .gdbinit-gef.py ~/.gdbinit-gef.py
	echo '----------------------copy pwndbg----------------------'
	cp pwndbg ~/pwndbg -r
	echo '----------------------copy Pwngdb----------------------'
	cp Pwngdb ~/Pwngdb -r

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
	    sudo mv $gdbpath1 $gdbdirpath1/gdb-source
	    sudo cp gdb $gdbdirpath1
	    sudo chmod +x $gdbpath1
	    sudo chmod +x $gdbdirpath1/gdb-*
	elif [ -f "$gdbpath2" ];then
	    echo "the gdb path $gdbpath2" 
	    sudo cp gdb-peda $gdbdirpath2
	    sudo cp gdb-gef $gdbdirpath2
	    sudo cp gdb-pwndbg $gdbdirpath2
	    sudo mv $gdbpath2 $gdbdirpath2/gdb-source
	    sudo cp gdb $gdbdirpath2
	    sudo chmod +x $gdbpath2
	    sudo chmod +x $gdbdirpath2/gdb-*
	else 
	    echo "the gdb not found,please install it!"
	    exit
	fi
	echo 'install success!'
elif [ "$1" = "remove" ];then
	rm -rf ~/peda
	rm -rf ~/.gdbinit-gef.py
	rm -rf ~/pwndbg
	rm -rf ~/Pwngdb
	rm -rf ~/.gdbinit_pwndbg
	rm -rf ~/.gdbinit
	if [ -f "$gdbpath1" ];then
	    echo "the gdb path $gdbpath1" 
	    sudo rm  $gdbdirpath1/gdb-peda
	    sudo rm  $gdbdirpath1/gdb-gef
	    sudo rm  $gdbdirpath1/gdb-pwndbg
	    if [ -f "$gdbdirpath1/gdb-source" ];then
	    	sudo rm $gdbpath1
	    	sudo mv $gdbdirpath1/gdb-source $gdbpath1
	    	echo 'remove success!'
	    else
	    	echo "gdb-source maybe lost!"
	    fi
	elif [ -f "$gdbpath2" ];then
	    echo "the gdb path $gdbpath2" 
	    sudo rm  $gdbdirpath2/gdb-peda
	    sudo rm  $gdbdirpath2/gdb-gef
	    sudo rm  $gdbdirpath2/gdb-pwndbg
	    if [ -f "$gdbdirpath2/gdb-source" ];then
	    	sudo rm $gdbpath2
	    	sudo mv $gdbdirpath2/gdb-source $gdbpath2
	    	echo 'remove success!'
	    else
	    	echo "gdb-source maybe lost!"
	    fi
	fi
	
fi
