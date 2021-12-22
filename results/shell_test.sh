#! /bin/bash

# for skill in 1 2 3 4 5
# do
# 	echo "I am good at ${skill}"
# done


for i in $(ls | grep "^kitti.*txt$")
do
    echo "$i"
done