#AIM: "String Test Condition"

#Dynamic Name Entry
read -p "Enter Your NAME: " NAME
#Linux USER NAME
USER_NAME=$(id -un)
if [[ "${USER_NAME}" == "${NAME}" ]]
then
	echo "Your $NAME matches to $USER_NAME"
else
	echo "User Name $NAME not matches to user name $USER_NAME"
fi

