fi

#SET the password
echo ${PASSWORD} | passwd --stdin ${USERNAME} 

#Check the password command has been success or not ?
if [[ "${?}" -ne 0 ]]
then
echo "The Paswword has not been generated successfully, re-create again"
exit 1
fi

#Force password change

passwd -e "${USERNAME}"


echo
echo "${USERNAME}"
sleep 1s

echo
echo "${PASSWORD}"
sleep 1s

echo
echo "${HOST}"
echo 
