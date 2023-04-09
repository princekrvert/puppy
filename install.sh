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
cp puppy /usr/bin
else
sudo cp puppy /usr/bin
fi 
echo -ne "\033[36;1m type puppy into the terminal to use puppy"