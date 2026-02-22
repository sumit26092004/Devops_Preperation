#!/bin/bash

echo "######## BULK USER CREATION ########"

read -p "How many users you want to create? " count

for (( i=1; i<=count; i++ ))
do
    echo ""
    echo "----- Creating User $i -----"

    read -p "Enter username: " username

    # Check if user already exists
    if id "$username" &>/dev/null; then
        echo "❌ User '$username' already exists. Skipping..."
        continue
    fi

    read -s -p "Enter password: " password
    echo ""

    useradd -m "$username"
    echo "$username:$password" | chpasswd

    echo "✅ User Created Successfully"

    read -p "Enter your team group name: " group

    # Block sudo and wheel
    #if [[ "$group" == "sudo" || "$group" == "wheel" ]]; then
     #   echo "❌ You are NOT allowed to join sudo or wheel group.Kindly Contact platform team for sudo rights"
      #  echo "User created but NOT added to restricted group."
       # continue
   # fi

    gpasswd -a "$username" "$group"
    gpasswd -a "$username" sugroup
    echo "✅ User added to $group successfully"

done

systemctl enable ssh
echo ""
echo "######## Process Completed ########"
