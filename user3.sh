#!/bin/bash
#Execute the User NAme for User Name
USER_NAME=$(id -un)
#if [[ ${?} -ne 0 ]]
echo "The USER ID is : ${UID} "
if [[ ${?} -eq 1 ]]
then
	echo "The ID command not successfully compiled"
	exit 1
fi
echo "The USER NAME : ${USER_NAME}"

