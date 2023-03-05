#!/bin/sh
# Android App Cloner
# This program is able to install various app to dual user without limits.

# Default duo-app user number:
dualusr=999

function clone() {

 # Install package to dual user:
 pm install -r --user $dualusr `pm path $1|awk -F':' '{print $2}'`

}

function help() {
 
 echo "APPCLONE - allow us to install various app to dual user without limits."
 echo "Usage: appclone [Package Name]"
 echo "For example: appclone com.tencent.mm"
 echo "Notice: only use it for user apps."
 echo "Created by hdtune2k."

}

# CLI Handler:
case $1 in
help)
 help
;;
"")
 echo "Error: package name not provided."
 exit
;;
*)
 clone $1
;;
esac

exit
