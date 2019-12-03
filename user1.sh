#!/bin/bash

#Execute the User NAme for User Name
USER_NAME=$(id -un)
echo "The USER NAME is ${USER_NAME}"

#Execute the UserID with builtin UID
echo "The USer ID is ${UID}"

#IF condition written to find ROOT user same as username

echo "The Unsername of the user is ${USER_NAME} and his UID would be ${UID} "
if [[ UID -eq 0 ]]
then
	echo " $USER_NAME IS ROOT USER "
else 
	echo " $USER_NAME IS NOT a ROOT USER "
fi


