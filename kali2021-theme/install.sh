#!/bin/bash

configDir = ~/
configFile = ${configDir}.bashrc 
echo "Searching .bashrc configuration file..."
if [ -f "${configFile}"]; then
        echo "File found."
        echo "Backing up configuration file."
	cp ${configFile} ./.bashrc.bak
	mv ${configFile} ${conigFile}.bak
	echo "Adding new configuration file."
	cp ./.bashrc ${configDir}
	echo "Done."
else
	echo "file not found."
	echo "Adding new configuration file."
	cp ./.bashrc ${configDir}
	echo "Done."

fi

