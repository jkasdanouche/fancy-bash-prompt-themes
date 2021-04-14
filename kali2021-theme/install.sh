#!/bin/bash

configDir=$HOME
configFile=${configDir}/.bashrc
backupDir=$PWD
backupFile=.bashrc.bak
echo "Searching .bashrc configuration file..."
if  test -f "$configFile"; then
        echo "File found."
        echo "Backing up configuration file."
	cp ${configFile} ${backupDir}/${backupFile}
	mv ${configFile} ${conigFile}.bak
	test -f "${backupDir}/${backupFile}" && echo "Backup done at: "${backupDir}/${backupFile} || echo "E: Backup could not be made."
	echo "Adding new configuration file."
	cp $PWD/.bashrc ${configDir}
	echo "Done."
else
	echo "File not found."
	echo "Adding new configuration file."
	cp ./.bashrc ${configDir}
	echo "Done."

fi

