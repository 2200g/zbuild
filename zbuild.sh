#!/bin/sh

## mkdir config
mkdir ~/.config/zbuild.sh/ > /dev/null 2>&1
touch ~/.config/zbuild.sh


read -r -p "zola directory [/home/aadi/site]: " dinozzo
read -r -p "site dir [/home/aadi/public]: " gibbs
read -r -p "git commit: " mcgee


## generates zola files
zola build

## copies stuff
cp -r -f $dinozzo/public/* $gibbs/

## git update
cd $gibbs/ 
git add . && git commit -m "$mcgee"
git push
