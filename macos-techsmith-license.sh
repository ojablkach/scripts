#!/bin/bash

# script made by https://ojablkach.xyz
# example
# key 00000-ZZZZZ-YYYYY-XXXXX-JJJJJ
# software Snagit or Camtasia

file="LicenseKey"
key=$4
software=$5

if [[ -f "/Users/Shared/TechSmith/${software}/${file}" ]]
	then
		echo "The ${file} does exist!"
	else
		echo "The ${file} does not exist"
		mkdir -p /Users/Shared/TechSmith/${software}
		echo ${key} > /Users/Shared/TechSmith/${software}/${file} && echo "${file} installed"
fi
