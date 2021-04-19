#!/bin/bash

##  By: Jorge Kas-danouche <jkasdanouche@gmail.com>

##  This script restores back the bash theme configuration based on backup file created by the install script beside it.
##  In case something went wrong you will have to restore manually.
##  If you ran at first instance the install script, there should be a .bak file in the home directory too.

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
