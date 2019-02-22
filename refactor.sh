#!/bin/sh


mkdir -v Backups
if [[ -d "Backups" ]]; then
	#statements
	cp -a -v "signature-change.input.js" Backups/
	if [ -f /usr/local/bin/jscodeshift ];
	then
		/usr/local/bin/jscodeshift -t signature-change.js signature-change.input.js -p
	else
		'C:\Users\richard.jackson\AppData\Roaming\npm\jscodeshift' -t signature-change.js signature-change.input.js -p
	fi
else
	#statements
	printf "\033[31mmissing Backups directory\033[0m\n"
fi
