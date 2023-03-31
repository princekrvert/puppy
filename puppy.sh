#!/usr/bin/bash
#Author Prince kumar 
# date 29 mar 2023
# Ask the question and work on dir strecture .....
# Store the var for present working dir 
present_working_dir=$(pwd)
function c_project(){
echo -ne "\033[33;1m Enter the project name: "
read pname
[[ -n "$pname" ]] || { echo -e "\033[31;1m Project name can not be empty:"  && exit 1; } 
# now create the folder structure for that project 

    # First create the file name 
    touch $present_working_dir/$pname
    # now create folder strecture for cmd handling 
    mkdir $present_working_dir/cmd && touch $present_working_dir/cmd/arg.pk
    # and last create a config file to load the all info about project 
    touch $present_working_dir/project.json
}
function create_project(){
# now ask for the author name and verion 
echo -ne "\033[33;1m Author name: "
read author 
echo -ne "\033[33;1m Project version: "
read version
echo -ne "\033[33;1m Project url: "
read purl
# create a function to add the project details in the project json file 

 # check if author name is not provided 
 echo -e "{ \n \"Author\" : \"$author\", " >> $present_working_dir/project.json 
 echo -e "  \n \"Version\" : \"$version\", " >> $present_working_dir/project.json
 echo -e " \n \"Url\" : \"$purl\", }" >> $present_working_dir/project.json

}
#create a function to add the positional argument ---
function pos(){
    # now prompt the user for some question ---
    # first create the file--
    touch $present_working_dir/cmd/$1
    # now add the details to the file ...
    
} 
# now handle the argument for init,add 
if [[ $1 == "init" ]];then
c_project
create_project
elif [[ $1 == "add" ]];then
# now check for the -p for positional argument 
    if [[ "$2" == "-p" ]];then 
    # user wants to add positional argument -- anld $3 will be the argument that is called..
    # check if cmd and args.pk exist or not 
    if [[ -f "$present_working_dir/cmd/arg.pk" ]];then 
        # add the entery to the file--
        echo "p:$3" >> cmd/arg.pk
    else
        echo -ne "\033[1;1m First initilized the project then add the argument" && exit 1 
        fi
    else
    # user wants to add a optional argument --
    if [[ -f "$present_working_dir/cmd/arg.pk" ]];then 
        # add the entery to the file--
        echo "p:$3" >> cmd/arg.pk
    else
        echo -ne "\033[1;1m First initilized the project then add the argument\n" && exit 1 
        fi
    echo "o:$2" >> cmd/arg.pk 
    fi
fi

