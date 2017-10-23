#!/bin/bash

[ -z "${2}" ] && echo "Invalid number of parameters passed" && exit 1

SCRIPT=$(readlink -f ${0})
SCRIPT_FOLDER=`dirname ${SCRIPT}`

cd ${1}

IFS=$'\n'
for file in `find -type f`
do
	cd ${SCRIPT_FOLDER}
	./convert.py ${1}/${file} > ${2}/`basename ${file} .theme`.edc
done

[[ ${3} == "--remove-whitespaces" ]] && cd ${2} && rename -f "s/\s+//g" *

echo "Done!"
