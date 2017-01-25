#!/bin/bash
read -r -p "First name: " firstNameInput
read -r -p "Last name: " lastNameInput
read -r -s -p "Password: " passwordInput
#Making username
usernamePre=${firstNameInput:0:1}$lastNameInput
username=${usernamePre,,}
fullName=$firstNameInput" "$lastNameInput
useradd -s "/bin/bash" -m -d "/home/$username" -c "$fullName" -G apache -p "$passwordInput" "$username"
echo 
echo "Account was successfully created for "$fullName