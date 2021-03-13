# AprilTag
### AprilTag Detection and Pose Estimation Library for C, C++ and Python

<p align="justify">
This repository hosts the C library for AprilTag, a visual fiducial system popular in robotics research. It can be used to develop high performance software for autonomous systems pertaining to perception, localization, mapping and SLAM.
</p>
<p align="justify">
This library supports C, C++ and Python for extended user support and seamless integration with existing software. It is capable of detecting and tracking single as well as multiple tags and computing their pose (homogeneous transformation matrix) w.r.t. camera in real-time.
</p>

## SETUP

1. Clone this `AprilTag` repository to your local machine.
    ```bash
    $ git clone https://github.com/Tinker-Twins/AprilTag.git
    ```
2. Install the library (build the source code) using the `install.sh` shell script.
    ```bash
    $ cd ~/AprilTag
    $ ./install.sh
    ```
  
    _**Note:** To uninstall (clean) and rebuild the entire source code, use the the `uninstall.sh` and `install.sh` shell scripts._
    ```bash
    $ cd ~/AprilTag
    $ ./uninstall.sh
    $ ./install.sh
    ```
    
