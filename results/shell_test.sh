#! /bin/bash

# for skill in 1 2 3 4 5
# do
# 	echo "I am good at ${skill}"
# done

folder_raw="./kitti"
folder_corrected="./kitti/corrected"

for file in $(ls $folder_raw | grep "^kitti.*txt$")
do
    echo "$file"
    cat $folder_raw/$file | tr -s [:space:] > $folder_corrected/$file
done