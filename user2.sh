#!/bin/bash
USER_NAME=$(id -un)
USER_ID=$UID

#Display UID
echo "The user ID = $UID"
#If condition to EXIT ouput if the condition not equals to user id 1000 or else.
if [[ 1000 -le $USER_ID ]]
then
	echo " $USER_NAME 's user ID is $UID "
	exit 1
fi


