define init-peda
source $(pwd)/peda/peda.py
source $(pwd)/Pwngdb/pwngdb.py
source $(pwd)/Pwngdb/angelheap/gdbinit.py
end
document init-peda
Initializes the PEDA (Python Exploit Development Assistant for GDB) framework
end

define init-pwndbg
source $(pwd)/.gdbinit_pwndbg
source $(pwd)/Pwngdb/pwngdb.py
source $(pwd)/Pwngdb/angelheap/gdbinit.py
end
document init-pwndbg
Initializes PwnDBG
end

define init-gef
source $(pwd)/.gdbinit-gef.py
source $(pwd)/Pwngdb/pwngdb.py
source $(pwd)/Pwngdb/angelheap/gdbinit.py
end
document init-gef
Initializes GEF (GDB Enhanced Features)
end

#gdb default
source $(pwd)/.gdbinit-gef.py
source $(pwd)/Pwngdb/pwngdb.py
source $(pwd)/Pwngdb/angelheap/gdbinit.py

