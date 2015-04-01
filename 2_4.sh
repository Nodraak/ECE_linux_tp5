#!/bin/bash

FILE=$(zenity --file-selection --filename=~ --multiple)

CHOICE=$(zenity --list --text="Choississez le format" --column="Format" "tar(+gz)" zip rar)

case ${CHOICE} in
    "tar(+gz)")
        tar -czf archive.tar.gz $FILE
    ;;
    "zip" )
        zip -r archive.tar $FILE
    ;;
    "rar" )
        echo "rar is not implemented"
    ;;
    *)
        echo "Error case"
esac

# tar compression options
#--bzip2
#--xz
#--gzip
