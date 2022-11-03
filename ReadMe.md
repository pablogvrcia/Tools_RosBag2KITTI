# Tools-RosBag2KITTI
Step 0. 

Clone this repository:

```bash
git clone git@github.com:pablogvrcia/Tools RosBag2KITTI.git
```

<<<<<<< HEAD
Step 1. 
=======
### 1. RosBag 2 Pcd ###
Data files recorded via ROS are usually saved in .bag format. We need to use the ROS system to decode the .bag file. The decoded files include image files(.png) and PointCloud files(.pcd).
>>>>>>> 6d93a03178e4f2bb79115629d98dce43730b82c1

Build the project:

<<<<<<< HEAD
```bash
cd pcd2bin ./build.sh
```
=======
* **Coordinate system transformation(Optional):**The purpose of coordinate system rotation and translation is achieved by adjusting the following parameter values in the file [map_generation_node.cpp](/rosbag2pcd/src/map_generation_node.cpp). All rotation parameters are angled and clockwise is positive.


* **Decoding:** Run `roscore` on the first console. Then open a new console, run `./devel/lib/ros2kitti/ros2kitti_node`in the */rosbag2pcd/CMakefile* directory. Open a new console, run `rosbag play xxx.bag -r 0.1`. The result files are save into the */rosbag2pcd/output*.
> 0.1 in the code means 0.1 times speed. The Speed is determined according to computer io performance. Make sure the timestamps are within +-50ms, otherwise adjust the play speed. 


### 2. Pcb 2 Bin ###

The PointCloud files decoded from the .bag file are usually in .pcd format. In order to facilitate the experiment of 3D detection, the format of the KITTI data set needs to be unified, that is, converted into the .bin format. In the .bin file, each point corresponds to four data, which are xyz and intensity.



* **Build the project**

	`cd pcd2bin` 
	`./build.sh`

* **Preparation:** Put the .pcd files into [pcd](/pcd2bin/pcd). Set the file path in the code [pcd2bin.cpp](/pcd2bin/pcd2bin.cpp).

* **Convertion:** The .bin files are saved into [bin](/pcd2bin/bin)

	`cd CMakefile`
	`./pcd2bin`

### 3. Create files_list.txt ###
The KITTI dataset has txt files like train.txt trainval.txt val.txt, which contains a subset of all data files.  So we need to get the files_list.txt

* **Get files_list:** The result will be saved into [bin](/pcd2bin/bin) named *list.txt*.

	`cd bin`; `ls -1 | grep ".bin$" > list.txt`

* **Create the final .txt:** The txt file obtained in the previous step contains a file suffix such as .bin. This requires further processing. After this step, you will get the final txt file named *files_list.txt*.

	`python get_list.py`
>>>>>>> 6d93a03178e4f2bb79115629d98dce43730b82c1

Step 2. 

Preparation. Put the .pcd files into pcd/. Set the file path in the code pcd2bin.cpp.

Step 3. 

Conversion. The .bin files are saved into bin/.

```bash
cd CMakefile ./pcd2bin.
```
