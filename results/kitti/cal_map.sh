#! /bin/bash

folder_gt="./gt"
folder_corrected="./corrected"

for sqe in 01 02 10 20 25
do
    dso="tum_dso_${sqe}.txt"
    ldso="tum_ldso_${sqe}.txt"
    gt="tum_gt_${sqe}.txt"
    evo_traj tum ${folder_corrected}/${dso} ${folder_corrected}/${ldso} --ref=${folder_gt}/$gt -p -s -a
done

# evo_traj tum ./corrected/kitti_dso_02.txt ./corrected/kitti_ldso_02.txt ./corrected/kitti_orbslam2_02.txt --ref=./gt/kitti_gt_02.txt -p -s -a
# evo_traj tum ./corrected/kitti_dso_05.txt ./corrected/kitti_ldso_05.txt ./corrected/kitti_orbslam2_05.txt --ref=./gt/kitti_gt_05.txt -p -s -a
# evo_traj tum ./corrected/kitti_dso_07.txt ./corrected/kitti_ldso_07.txt ./corrected/kitti_orbslam2_07.txt --ref=./gt/kitti_gt_07.txt -p -s -a