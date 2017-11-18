#!/bin/bash

ls -d *.apk| while read line
do
    echo $line
    aapt dump badging "$line" |grep "package: \|application-label:\|application-label-zh\|application-label-en"
    
    echo "------------------------------------"
done
