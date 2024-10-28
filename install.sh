#!/bin/bash 
# installation file for puppy cli
# made by prince 
# first give puppy permission 
chmod +x puppy 
# check for the platform 
echo -ne " _______  __   __  _______  _______  __   __   
|       ||  | |  ||       ||       ||  | |  |  
|    _  ||  | |  ||    _  ||    _  ||  |_|  |  
|   |_| ||  |_|  ||   |_| ||   |_| ||       |  
|    ___||       ||    ___||    ___||_     _|  
|   |    |       ||   |    |   |      |   |    
|___|    |_______||___|    |___|      |___| \033[31;1m MADE BY PRINCE
"


platform=$(uname -o)
if [[ $platform == "Android" ]];then 
cp puppy /data/data/com.termux/files/usr/bin
# install the gum 
pkg install gum 
else
sudo cp puppy /usr/bin
# we are assuming the user will user debian based linux system 
# now install the gum 
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install gum
fi 
echo -ne "\033[36;1m type puppy into the terminal to use puppy"
