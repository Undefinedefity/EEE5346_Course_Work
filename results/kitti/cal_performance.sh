#! /bin/bash

folder_gt="./gt"
folder_corrected="./corrected"

for file in $(ls $folder_raw | grep "^tum.*txt$")
do
    echo "$file"
    cat $folder_raw/$file | tr -s [:space:] > $folder_corrected/$file
done