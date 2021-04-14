
#!/bin/bash

configDir=$HOME
configFile=${configDir}/.bashrc
backupDir=$PWD
backupFile=${backupDir}/.bashrc.bak

if test -f "${backupFile}"; then
	echo "Restoring default configuration."
	cp ${backupFile} ${configFile}
	rm ${backupFile}
	echo "Done."
else
	echo "E:There is no backup file or it's allready restored. Restoration was not made."
fi
