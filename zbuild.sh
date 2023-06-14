#!/bin/sh

## mkdir config
mkdir ~/.config/zbuild/ > /dev/null 2>&1
touch ~/.config/zbuild/config

config=~/.config/zbuild/config

ducky=$(cat $config)

abby=
ziva= 

zbuildinit() {
	rm ~/.config/zbuild/zbuild.sh > /dev/null 2>&1
	touch ~/.config/zbuild/config
	read -r -p "zola dir [/home/aadi/site]: " dinozzo
	read -r -p "site dir [/home/aadi/public]: " gibbs
		
	echo "zola = $dinozzo" >> $config
	echo "site = $gibbs" >> $config
}

zbuild() {
	echo 124
	read -r -p "git commit: " mcgee
	zola build
	
	cp -r -f $abby/public/* $ziva/
	cd $ziva/ 
	git add . && git commit -m "$mcgee"
	git push
}

halp() {
	echo hi
}


while getopts ":hi" option; do
	case $option in
		h)
			halp
			exit;;
		i)
			zbuildinit;;
	esac
done
