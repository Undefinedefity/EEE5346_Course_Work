# EEE5346_Course_Work
SUSTech EEE5346 Autonomous Robot Navigation, my course work backup

[toc]

# Before

All the project algorithms or datasets are under `~/SLAM`

# ORB-SLAM2 on KITTI

to change the data sequences, like this:

```
./Examples/Monocular/mono_kitti Vocabulary/ORBvoc.txt Examples/Monocular/KITTIX.yaml PATH_TO_DATASET_FOLDER/dataset/sequences/SEQUENCE_NUMBER
```

改``KITTIX.yaml`为` KITTI00-02.yaml`, `KITTI03.yaml`, `KITTI04-12.yam`l，分别对应压缩包` 0-2`, `3`, `4-12`。`PATH_TO_DATASET_FOLDER` 为下载数据集的解压目录, i.e. `../datasets/KITTI/data_odometry_gray`. `SEQUENCE_NUMBER`为`00`, `01`,` 02`,…, `11`.

eg:

```
$ cd ~/SLAM/ORB-SLAM2
$ ./Examples/Monocular/mono_kitti Vocabulary/ORBvoc.txt Examples/Monocular/KITTI03.yaml ../datasets/KITTI/data_odometry_gray/dataset/sequences/03
```

# DSO ON KITTI

https://www.cxyzjd.com/article/qingjiaowoagui/114487551

http://www.noobyard.com/article/p-nrjqtxes-gd.html

camera.txt文件需要根据KITTI不同序列的相机内参进行修改，可以参考ORB-SLAM2中的KITTIxx.yaml文件。参考博客/测试选择crop，即可以写成以下形式：

```
707.0912 707.0912 601.8873 183.1104 0.0
1226 376
crop
1216 368
```

```
$ cd ~/SLAM/dso
$ ./build/bin/dso_dataset files=/home/def/SLAM/datasets/KITTI/data_odometry_gray/dataset/sequences/01/image_0 calib=/home/def/SLAM/datasets/KITTI/data_odometry_gray/dataset/sequences/01/camera.txt preset=0 mode=2
```

# DSO on TUM

https://github.com/JakobEngel/dso

go to `/dso/build`

```
bin/dso_dataset \
    files=XXXXX/sequence_XX/images.zip \
    calib=XXXXX/sequence_XX/camera.txt \
    gamma=XXXXX/sequence_XX/pcalib.txt \
    vignette=XXXXX/sequence_XX/vignette.png \
    preset=0 \
    mode=0
```

eg: 

```
$ cd ~/SLAM/dso/build/bin
$ ./dso_dataset \
    files=/home/def/SLAM/datasets/TUM/sequence_07/images.zip \
    calib=/home/def/SLAM/datasets/TUM/sequence_07/camera.txt \
    gamma=/home/def/SLAM/datasets/TUM/sequence_07/pcalib.txt \
    vignette=/home/def/SLAM/datasets/TUM/sequence_07/vignette.png \
    preset=0 \
    mode=0
```

# LDSO on KITTI

12 entries per row

wait enough to get the full data

# VO2SLAM on EuRoC

https://github.com/ov2slam/ov2slam

https://rupingcen.blog.csdn.net/article/details/115715834#22_KITTI_70

how to run, as follows

```
new terminal $ roscore
new termianl $ rviz -d ov2slam_visualization.rviz
new terminal $ rosrun ov2slam ov2slam_node /home/def/SLAM/catkin_ws/src/ov2slam/parameters_files/accurate/euroc/euroc_mono.yaml
new terminal $ cd ~/SLAM/datasets/EuRoC
			 $ rosbag play MH_05_difficult.bag
```

glog: sudo apt-get install libgoogle-glog-dev

# VO2SLAM on KITTI

need to convert the images to `rosbag` first, as https://blog.csdn.net/yangziluomu/article/details/77371361

# Others

- POP-UP-SLAM very less tutorials

- PL-SLAM too old to configure



# TO DO

- need to install evo to evalutate the perfromance
- VO2SLAM on KITTI, convert `rosbag`
- DSO on KITTI



##  EVO evaluate



evo_traj-用于分析，绘制或导出一个或多个轨迹的工具

evo_res-用于比较evo_ape或evo_rpe中的一个或多个结果文件的工具

evo_fig-用于重新打开序列化图的（实验性）工具（使用--serialize_plot保存）

evo_config-用于全局设置和配置文件操作的工具

tool工具执行参数参考：

evo_traj --help  



### VO2SLAM on KITTI, convert `rosbag`

https://blog.csdn.net/yangziluomu/article/details/77371361
