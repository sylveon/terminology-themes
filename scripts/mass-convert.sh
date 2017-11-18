#!/bin/bash

[[ ${1} == "--help" ]] && echo "usage: mass-convert.sh [source directory] [output directory]" && \
                          echo "You can optionally append --remove-whitespaces to remove whitespaces in the name of the output files" && exit

[ -z "${2}" ] && echo "Invalid number of parameters passed" && echo "See '--help' for usage" && exit 1

SCRIPT=$(readlink -f "${0}")
SCRIPT_FOLDER=$(dirname "${SCRIPT}")

cd "${1}" || exit 2

IFS=$'\n'
for file in $(find -type f)
do
	cd "${SCRIPT_FOLDER}" || exit 2
	OUTPUT_FILE=${2}/$(basename "${file}" .theme).edc
	[[ ${3} == "--remove-whitespaces" ]] && OUTPUT_FILE=${OUTPUT_FILE//[[:space:]]}
	./convert.py "${1}/${file}" > "${OUTPUT_FILE}"
done

echo "Done!"
