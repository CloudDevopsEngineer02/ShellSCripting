#This script creates an account on local machine.
#You will be prompted for account name and password

# Ask USER Name
read -p 'Enter the User Name of the Employee: ' EMP
# Ask REAL Name
read -p 'Enter the Full name of the Employee: ' FULL_NAME 
# Ask PASSWORD
read -s -p ' $EMP please Enter your Password: ' PASSWORD
#Create the USER in HOME Directory with '-m ' argument
useradd -c "${FULL_NAME}"  -m ${EMP} 
#Create PAssword for above USER : "--stdin" This option is used to indicate that passwd should read the new password from standard input, which can be a pipe.
echo ${PASSWORD}  | passwd --stdin ${EMP}

#Force Password change on FirstTimeLogin can be achived by '-e' EXPIRE
passwd -e ${EMP} 


