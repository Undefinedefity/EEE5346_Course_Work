#! /bin/bash

# folder_raw="./kitti/raw"
# folder_corrected="./kitti/corrected"

# for file in $(ls $folder_raw | grep "^kitti.*txt$")
# do
#     echo "$file"
#     cat $folder_raw/$file | tr -s [:space:] > $folder_corrected/$file
# done

folder_raw="./tum/raw"
folder_corrected="./tum/corrected"

for file in $(ls $folder_raw | grep "^tum.*txt$")
do
    echo "$file"
    cat $folder_raw/$file | tr -s [:space:] > $folder_corrected/$file
done