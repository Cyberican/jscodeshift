#!/bin/sh


mkdir -v Backups
if [[ -d "Backups" ]]; then
	#statements
	cp -a -v "signature-change.input.js" Backups/
	/usr/local/bin/jscodeshift -t signature-change.js signature-change.input.js -d -p
else 
	#statements
	printf "\033[31mmissing Backups directory\033[0m\n"
fi
