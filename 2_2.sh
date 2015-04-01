#!/bin/bash

DIR="testFiles"

# for each file in dir
for file in $(find $DIR -type f)
do
    # can write : chmod
    OK_MOD='0'
    MOD=$(stat --printf="%A" $file | cut -b 9) # print chmod of file | get 9th char (write for other)
    if [ $MOD = 'w' ]
    then
        OK_MOD='1'
    fi

    # can write : group
    FILE_GROUP=$(stat --printf="%G" $file) # get group of file
    OK_GRP='0'
    for g in $(groups) # if group is in one of my groups
    do
        if [ $FILE_GROUP = $g ]
        then
            OK_GRP='1'
        fi
    done

    # print result
    if [[ $OK_MOD = '1' ]] || [[ $OK_GRP = '1' ]]
    then
        echo $file
    fi
done
