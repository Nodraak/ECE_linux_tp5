#!/bin/bash

# starting directory
DIR="~"

# ask the min size to search for
SIZE=$(zenity --title="Trouver des fichiers volumineux dans votre repertoire personnel"\
        --scale --text "Taille en MB" --value 4)
# find files with size and print name and size of file | sort by number and reversed | to file
find $DIR -type f -size +$(echo $SIZE)M -printf "%s %P\n" | sort -n -r > out.txt

# show result
echo "Saved results to out.txt :"
cat out.txt
