#!/bin/bash
#Only ROOT users can execute the script: Hint "Create a if conditions for MEssage"

if [[ : "${UID}" -ne 0 ]]
then
	echo "The user name is not Sudoer or Non-ROOT user "
	exit 1
fi

read -p "Enter the User Name " USER_NAME
read -p "Enter REAL NAME or APPLICATION FULL name with DESCRIPTION " COMMNET 
read -s -p "Enter the PASSWORD for the above user " PASSWORD
# -c argument has been taken for comment and -m for home directory
useradd -c "${COMMNET}" -m ${USER_NAME}
# The below condition states that the user has been successfully created or not ?
if [[ "${?}" -ne 0 ]]
then
	echo "The ${USER_NAME} hasn't created successfully...!!"
	exit 1
fi

# | is to include and standed input username which already taken from keyboard.
passwd "${PASSWORD}"  | -- stdin ${USER_NAME}

#First password has to be expire after first login
passwd -e ${USER_NAME}

echo
echo "USER NAME: ${USER_NAME} "

echo
echo "USER/Application  REAL NAME/Description: ${COMMENT} "

echo
echo "Password you provided: ${PASSWORD} "

echo "Host Name: "${hostname}" "
exit 0




#Enter the correct password 

