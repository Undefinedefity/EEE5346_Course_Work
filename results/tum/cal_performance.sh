#! /bin/bash

folder_gt="./gt"
folder_corrected="./corrected"

# evo_ape tum ./gt/kitti_gt_00.txt ./corrected/kitti_dso_00.txt -p -s -a -v --save_results ./zip/kitti_dso_00.zip
# evo_ape tum ./gt/kitti_gt_01.txt ./corrected/kitti_dso_01.txt -p -s -a -v --save_results ./zip/kitti_dso_01.zip
# evo_ape tum ./gt/kitti_gt_02.txt ./corrected/kitti_dso_02.txt -p -s -a -v --save_results ./zip/kitti_dso_02.zip
# evo_ape tum ./gt/kitti_gt_05.txt ./corrected/kitti_dso_05.txt -p -s -a -v --save_results ./zip/kitti_dso_05.zip
# evo_ape tum ./gt/kitti_gt_07.txt ./corrected/kitti_dso_07.txt -p -s -a -v --save_results ./zip/kitti_dso_07.zip

# evo_ape tum ./gt/kitti_gt_00.txt ./corrected/kitti_ldso_00.txt -p -s -a -v --save_results ./zip/kitti_ldso_00.zip
# evo_ape tum ./gt/kitti_gt_01.txt ./corrected/kitti_ldso_01.txt -p -s -a -v --save_results ./zip/kitti_ldso_01.zip
# evo_ape tum ./gt/kitti_gt_02.txt ./corrected/kitti_ldso_02.txt -p -s -a -v --save_results ./zip/kitti_ldso_02.zip
# evo_ape tum ./gt/kitti_gt_05.txt ./corrected/kitti_ldso_05.txt -p -s -a -v --save_results ./zip/kitti_ldso_05.zip
# evo_ape tum ./gt/kitti_gt_07.txt ./corrected/kitti_ldso_07.txt -p -s -a -v --save_results ./zip/kitti_ldso_07.zip

# evo_ape tum ./gt/kitti_gt_00.txt ./corrected/kitti_orbslam2_00.txt -p -s -a -v --save_results ./zip/kitti_orbslam2_00.zip
# evo_ape tum ./gt/kitti_gt_01.txt ./corrected/kitti_orbslam2_01.txt -p -s -a -v --save_results ./zip/kitti_orbslam2_01.zip
# evo_ape tum ./gt/kitti_gt_02.txt ./corrected/kitti_orbslam2_02.txt -p -s -a -v --save_results ./zip/kitti_orbslam2_02.zip
# evo_ape tum ./gt/kitti_gt_05.txt ./corrected/kitti_orbslam2_05.txt -p -s -a -v --save_results ./zip/kitti_orbslam2_05.zip
# evo_ape tum ./gt/kitti_gt_07.txt ./corrected/kitti_orbslam2_07.txt -p -s -a -v --save_results ./zip/kitti_orbslam2_07.zip

# for seq in 00 01 02 05 07
# do
# for algo in dso ldso orbslam2
# do
#     # evo_ape tum ./gt/kitti_gt_${seq}.txt ./corrected/kitti_${algo}_${seq}.txt -p -s -a -v --save_results ./zip/kitti_${algo}_${seq}.zip
#     evo_ape tum ./gt/kitti_gt_${seq}.txt ./corrected/kitti_${algo}_${seq}.txt -s -a -v --save_results ./ape_zip/kitti_${algo}_${seq}.zip
# done
# done


# for seq in 00 01 02 05 07
# do
#     evo_res ./ape_zip/kitti_dso_$seq.zip ./ape_zip/kitti_ldso_$seq.zip ./ape_zip/kitti_orbslam2_$seq.zip -p --save_table ./table/kitti_$seq.csv
# done

dso="./ape_zip/kitti_dso_"
ldso="./ape_zip/kitti_ldso_"
orbslam2="./ape_zip/kitti_orbslam2_"

evo_res ${dso}00.zip ${dso}01.zip ${dso}02.zip ${dso}05.zip ${dso}07.zip \
        ${ldso}00.zip ${ldso}01.zip  ${ldso}02.zip  ${ldso}05.zip  ${ldso}07.zip \
        ${orbslam2}00.zip ${orbslam2}01.zip ${orbslam2}02.zip ${orbslam2}05.zip ${orbslam2}07.zip \
        -p --save_table ./table/kitti.csv
