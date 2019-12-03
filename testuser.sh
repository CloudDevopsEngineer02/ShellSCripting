#AIM: "String Test Condition"

#Dynamic Name Entry
read -p "Enter Your NAME: " NAME

#Linux USER NAME
USER_NAME=$(id -un)

#IF Condition
#if [["${USER_NAME}" == "${NAME}" ]]

if [[ "${NAME}" ==  "${USER_NAME}" ]]
then
	echo "Your $NAME matches to $USER_NAME"
else
	echo "Your $NAME not matches to $USER_NAME"
fi


#++++++++++++++++++++++++++++++++++++++ OUTPUTS+++++++++++++++++++++++++++#

#[ec2-user@ip-172-31-1-113 scripts]$ ./testuser.sh
#Enter Your NAME: ec2-user
#Your ec2-user matches to ec2-user
#[ec2-user@ip-172-31-1-113 scripts]$ ./testuser.sh
#Enter Your NAME: EC2-USER
#Your EC2-USER not matches to ec2-user
#[ec2-user@ip-172-31-1-113 scripts]$ ./testuser.sh
#Enter Your NAME: TEST
#Your TEST not matches to ec2-user
#[ec2-user@ip-172-31-1-113 scripts]$ SUDO ./testuser.sh
#-bash: SUDO: command not found
#[ec2-user@ip-172-31-1-113 scripts]$ sudo ./testuser.sh
#Enter Your NAME: root
#Your root matches to root
#[ec2-user@ip-172-31-1-113 scripts]$ sudo ./testuser.sh
#Enter Your NAME: ROOT
#Your ROOT not matches to root 


